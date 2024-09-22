import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_booking/domain/base/use_case_result.dart';
import 'package:hotel_booking/domain/favorite/get/get_all_favorites_use_case.dart';
import 'package:hotel_booking/domain/favorite/remove/remove_favorite_use_case.dart';
import 'package:hotel_booking/domain/favorite/remove/remove_request.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:hotel_booking/presentation/module/favorite/bloc/blocdata/favorite_bloc_data.dart';
import 'package:hotel_booking/presentation/module/favorite/bloc/favorite_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockGetAllFavoritesUseCase extends Mock
    implements GetAllFavoritesUseCase {}

class MockHotel extends Mock implements Hotel {}

class FakeUseCaseResult extends Fake implements UseCaseResult<List<Hotel>> {}

class MockRemoveFavoriteUseCase extends Mock implements RemoveFavoriteUseCase {}

class FakeFavoriteRequest extends Fake implements RemoveFavoriteRequest {}

void main() {
  late FavoriteBloc favoriteBloc;
  late MockGetAllFavoritesUseCase mockGetAllFavoritesUseCase;
  late MockRemoveFavoriteUseCase mockRemoveFavoriteUseCase;

  setUp(() {
    registerFallbackValue(FakeUseCaseResult());
    registerFallbackValue(FakeFavoriteRequest());
    mockGetAllFavoritesUseCase = MockGetAllFavoritesUseCase();
    mockRemoveFavoriteUseCase = MockRemoveFavoriteUseCase();
    favoriteBloc = FavoriteBloc(
      getAllFavoritesUseCase: mockGetAllFavoritesUseCase,
      removeFavoriteUseCase: mockRemoveFavoriteUseCase,
    );
  });
  group('FavoriteBloc Tests', () {
    blocTest<FavoriteBloc, FavoriteState>(
      'emits GetAllFavoriteState when GetAllFavoriteEvent is added',
      build: () {
        when(() => mockGetAllFavoritesUseCase.perform(any())).thenAnswer(
          (invocation) async {
            final result =
                invocation.positionalArguments[0] as UseCaseResult<List<Hotel>>;
            result.onSuccess?.call([MockHotel(), MockHotel()]);
            return result;
          },
        );
        return favoriteBloc;
      },
      act: (bloc) => bloc.add(GetAllFavoriteEvent()),
      expect: () => [
        isA<GetAllFavoriteState>(),
      ],
      verify: (_) {
        verify(() => mockGetAllFavoritesUseCase.perform(any())).called(1);
      },
    );

    blocTest<FavoriteBloc, FavoriteState>(
      'emits FavoriteRemovedConfirmationState when RemoveConfirmationEvent is added',
      build: () => favoriteBloc,
      act: (bloc) =>
          bloc.add(const RemoveConfirmationEvent(hotelId: 'hotel_123')),
      expect: () => [
        isA<FavoriteRemovedConfirmationState>(),
      ],
    );

    blocTest<FavoriteBloc, FavoriteState>(
      'emits GetAllFavoriteState, FavoriteSuccessfullyRemovedState when RemoveFavoriteEvent is added',
      build: () {
        when(() => mockRemoveFavoriteUseCase.perform(any(), any()))
            .thenAnswer((invocation) async {
          final result = invocation.positionalArguments[1] as UseCaseResult;
          result.onFinished?.call();
        });

        favoriteBloc.blocData = FavoriteBlocData(hotels: [
          MockHotel(),
          MockHotel(),
        ]);
        return favoriteBloc;
      },
      act: (bloc) => bloc.add(const RemoveFavoriteEvent(hotelId: 'hotel_123')),
      expect: () => [
        isA<GetAllFavoriteState>(),
        isA<FavoriteSuccessfullyRemovedState>(),
      ],
      verify: (_) {
        verify(() => mockRemoveFavoriteUseCase.perform(any(), any())).called(1);
      },
    );
  });

  tearDown(() async {
    await favoriteBloc.close();
  });
}
