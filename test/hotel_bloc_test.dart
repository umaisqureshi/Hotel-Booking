import 'package:bloc_test/bloc_test.dart';
import 'package:hotel_booking/data/exception/exception.dart';
import 'package:hotel_booking/domain/base/use_case_result.dart';
import 'package:hotel_booking/domain/favorite/add/add_favorite_use_case.dart';
import 'package:hotel_booking/domain/favorite/add/favorite_request.dart';
import 'package:hotel_booking/domain/hotels/get_hotels_use_case.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:hotel_booking/presentation/module/hotels/bloc/hotels_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

class MockGetHotelsUseCase extends Mock implements GetHotelsUseCase {}

class MockAddToFavoriteUseCase extends Mock implements AddToFavoriteUseCase {}

class MockHotel extends Mock implements Hotel {}

class FakeUseCaseResult extends Fake implements UseCaseResult<HotelEntity> {}

class FakeFavoriteRequest extends Fake implements FavoriteRequest {}

void main() {
  late MockGetHotelsUseCase mockGetHotelsUseCase;
  late MockAddToFavoriteUseCase mockAddToFavoriteUseCase;
  late HotelBloc hotelBloc;

  setUp(() {
    registerFallbackValue(FakeUseCaseResult());
    registerFallbackValue(FakeFavoriteRequest());
    mockGetHotelsUseCase = MockGetHotelsUseCase();
    mockAddToFavoriteUseCase = MockAddToFavoriteUseCase();
    hotelBloc = HotelBloc(
      getHotelUseCase: mockGetHotelsUseCase,
      addToFavoriteUseCase: mockAddToFavoriteUseCase,
    );
  });

  group('HotelBloc Tests', () {
    blocTest<HotelBloc, HotelsState>(
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
        return hotelBloc;
      },
      act: (bloc) => bloc.add(GetAllHotelsEvent()),
      expect: () => [
        isA<HotelsLoadedState>(),
      ],
      verify: (_) {
        verify(() => mockGetHotelsUseCase.perform(any())).called(1);
      },
    );

    blocTest<HotelBloc, HotelsState>(
      'emits HotelErrorState when GetAllHotelsEvent is added and GetHotelsUseCase fails',
      build: () {
        when(() => mockGetHotelsUseCase.perform(any())).thenAnswer(
          (invocation) async {
            final result = invocation.positionalArguments[0] as UseCaseResult;
            result.onError?.call(Exception('Failed to load hotels'));
          },
        );
        return hotelBloc;
      },
      act: (bloc) => bloc.add(GetAllHotelsEvent()),
      expect: () => [
        isA<HotelErrorState>(),
      ],
    );

    blocTest<HotelBloc, HotelsState>(
      'emits [HotelAddedSuccessfullyState] when AddToFavoriteEvent is added and succeeds',
      build: () {
        when(() => mockAddToFavoriteUseCase.perform(any(), any())).thenAnswer(
          (invocation) async {
            final result = invocation.positionalArguments[1] as UseCaseResult;
            result.onFinished?.call();
          },
        );
        return hotelBloc;
      },
      act: (bloc) => bloc.add(AddToFavoriteEvent(hotel: MockHotel())),
      expect: () => [
        isA<HotelAddedSuccessfullyState>(),
      ],
    );

    blocTest<HotelBloc, HotelsState>(
      'emits HotelAlreadyExistState when AddToFavoriteEvent is added and hotel already exists',
      build: () {
        when(() => mockAddToFavoriteUseCase.perform(any(), any())).thenAnswer(
          (invocation) async {
            final result = invocation.positionalArguments[1] as UseCaseResult;
            result.onError
                ?.call(AlreadyExistException(message: "Already exist"));
          },
        );
        return hotelBloc;
      },
      act: (bloc) => bloc.add(AddToFavoriteEvent(hotel: MockHotel())),
      expect: () => [
        isA<HotelAlreadyExistState>(),
      ],
    );
  });

  tearDown(() async {
    await hotelBloc.close();
  });
}
