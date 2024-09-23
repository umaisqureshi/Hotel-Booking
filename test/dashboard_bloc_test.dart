import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_booking/data/exception/exception.dart';
import 'package:hotel_booking/domain/base/use_case_result.dart';
import 'package:hotel_booking/domain/favorite/add/add_favorite_use_case.dart';
import 'package:hotel_booking/domain/favorite/add/favorite_request.dart';
import 'package:hotel_booking/domain/favorite/get/get_all_favorites_use_case.dart';
import 'package:hotel_booking/domain/favorite/remove/remove_favorite_use_case.dart';
import 'package:hotel_booking/domain/favorite/remove/remove_request.dart';
import 'package:hotel_booking/domain/hotels/get_hotels_use_case.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:hotel_booking/presentation/module/dashboard/bloc/blocdata/dashboard_bloc_data.dart';
import 'package:hotel_booking/presentation/module/dashboard/bloc/dashboard_bloc.dart';

import 'package:mocktail/mocktail.dart';

class MockGetAllFavoritesUseCase extends Mock
    implements GetAllFavoritesUseCase {}

class MockHotel extends Mock implements Hotel {}

class FakeUseCaseHotelEntityResult extends Fake
    implements UseCaseResult<HotelEntity> {}

class FakeUseCaseResult extends Fake implements UseCaseResult<List<Hotel>> {}

class MockRemoveFavoriteUseCase extends Mock implements RemoveFavoriteUseCase {}

class FakeFavoriteRemoveRequest extends Fake implements RemoveFavoriteRequest {}

class FakeFavoriteRequest extends Fake implements FavoriteRequest {}

class MockGetHotelsUseCase extends Mock implements GetHotelsUseCase {}

class MockAddToFavoriteUseCase extends Mock implements AddToFavoriteUseCase {}

void main() {
  late DashboardBloc bloc;
  late MockGetAllFavoritesUseCase mockGetAllFavoritesUseCase;
  late MockRemoveFavoriteUseCase mockRemoveFavoriteUseCase;
  late MockGetHotelsUseCase mockGetHotelsUseCase;
  late MockAddToFavoriteUseCase mockAddToFavoriteUseCase;
  setUp(() {
    registerFallbackValue(FakeUseCaseResult());
    registerFallbackValue(FakeUseCaseHotelEntityResult());
    registerFallbackValue(FakeFavoriteRequest());
    registerFallbackValue(FakeFavoriteRemoveRequest());
    registerFallbackValue(FakeUseCaseResult());

    mockGetAllFavoritesUseCase = MockGetAllFavoritesUseCase();
    mockRemoveFavoriteUseCase = MockRemoveFavoriteUseCase();

    mockGetHotelsUseCase = MockGetHotelsUseCase();
    mockAddToFavoriteUseCase = MockAddToFavoriteUseCase();
    bloc = DashboardBloc(
      getHotelUseCase: mockGetHotelsUseCase,
      addToFavoriteUseCase: mockAddToFavoriteUseCase,
      getAllFavoritesUseCase: mockGetAllFavoritesUseCase,
      removeFavoriteUseCase: mockRemoveFavoriteUseCase,
    );
  });
  group('Favorite tests', () {
    blocTest<DashboardBloc, DashboardState>(
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
        return bloc;
      },
      act: (bloc) => bloc.add(GetAllFavoriteEvent()),
      expect: () => [
        isA<GetAllFavoriteState>(),
      ],
      verify: (_) {
        verify(() => mockGetAllFavoritesUseCase.perform(any())).called(1);
      },
    );

    blocTest<DashboardBloc, DashboardState>(
      'emits FavoriteRemovedConfirmationState when RemoveConfirmationEvent is added',
      build: () => bloc,
      act: (bloc) =>
          bloc.add(const RemoveConfirmationEvent(hotelId: 'hotel_123')),
      expect: () => [
        isA<FavoriteRemovedConfirmationState>(),
      ],
    );

    blocTest<DashboardBloc, DashboardState>(
      'emits GetAllFavoriteState, FavoriteSuccessfullyRemovedState when RemoveFavoriteEvent is added',
      build: () {
        when(() => mockRemoveFavoriteUseCase.perform(any(), any()))
            .thenAnswer((invocation) async {
          final result = invocation.positionalArguments[1] as UseCaseResult;
          result.onFinished?.call();
        });

        bloc.blocData = DashboardBlocData(favoriteHotels: [
          MockHotel(),
          MockHotel(),
        ]);
        return bloc;
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
  group('Hotel tests', () {
    blocTest<DashboardBloc, DashboardState>(
      'emits HotelsLoadedState when GetAllHotelsEvent is added and GetHotelsUseCase succeeds',
      build: () {
        when(() => mockGetHotelsUseCase.perform(any())).thenAnswer(
          (invocation) async {
            final result =
                invocation.positionalArguments[0] as UseCaseResult<HotelEntity>;
            result.onSuccess
                ?.call(HotelEntity(hotels: [MockHotel()], hotelCount: 0));
            return result;
          },
        );
        return bloc;
      },
      act: (bloc) => bloc.add(GetAllHotelsEvent()),
      expect: () => [
        isA<HotelsLoadedState>(),
      ],
      verify: (_) {
        verify(() => mockGetHotelsUseCase.perform(any())).called(1);
      },
    );

    blocTest<DashboardBloc, DashboardState>(
      'emits HotelErrorState when GetAllHotelsEvent is added and GetHotelsUseCase fails',
      build: () {
        when(() => mockGetHotelsUseCase.perform(any())).thenAnswer(
          (invocation) async {
            final result = invocation.positionalArguments[0] as UseCaseResult;
            result.onError?.call(Exception('Failed to load hotels'));
          },
        );
        return bloc;
      },
      act: (bloc) => bloc.add(GetAllHotelsEvent()),
      expect: () => [
        isA<HotelErrorState>(),
      ],
    );

    blocTest<DashboardBloc, DashboardState>(
      'emits [HotelAddedSuccessfullyState] when AddToFavoriteEvent is added and succeeds',
      build: () {
        when(() => mockAddToFavoriteUseCase.perform(any(), any())).thenAnswer(
          (invocation) async {
            final result = invocation.positionalArguments[1] as UseCaseResult;
            result.onFinished?.call();
          },
        );

        bloc.blocData = DashboardBlocData(favoriteHotels: [
          MockHotel(),
          MockHotel(),
        ]);
        return bloc;
      },
      act: (bloc) => bloc.add(AddToFavoriteEvent(hotel: MockHotel())),
      expect: () =>
          [isA<HotelAddedSuccessfullyState>(), isA<GetAllFavoriteState>()],
    );

    blocTest<DashboardBloc, DashboardState>(
      'emits HotelAlreadyExistState when AddToFavoriteEvent is added and hotel already exists',
      build: () {
        when(() => mockAddToFavoriteUseCase.perform(any(), any())).thenAnswer(
          (invocation) async {
            final result = invocation.positionalArguments[1] as UseCaseResult;
            result.onError
                ?.call(AlreadyExistException(message: "Already exist"));
          },
        );
        return bloc;
      },
      act: (bloc) => bloc.add(AddToFavoriteEvent(hotel: MockHotel())),
      expect: () => [
        isA<HotelAlreadyExistState>(),
      ],
    );
  });

  tearDown(() async {
    await bloc.close();
  });
}
