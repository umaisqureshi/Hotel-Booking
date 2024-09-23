import '../../../presentation.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

@injectable
class DashboardBloc extends BaseBloc<DashboardEvent, DashboardState> {
  final GetHotelsUseCase _getHotelsUseCase;
  final AddToFavoriteUseCase _addToFavoriteUseCase;
  final RemoveFavoriteUseCase _removeFavoriteUseCase;
  final GetAllFavoritesUseCase _getAllFavoritesUseCase;

  DashboardBlocData blocData = const DashboardBlocData();
  DashboardBloc(
      {required GetHotelsUseCase getHotelUseCase,
      required GetAllFavoritesUseCase getAllFavoritesUseCase,
      required RemoveFavoriteUseCase removeFavoriteUseCase,
      required AddToFavoriteUseCase addToFavoriteUseCase})
      : _getHotelsUseCase = getHotelUseCase,
        _getAllFavoritesUseCase = getAllFavoritesUseCase,
        _removeFavoriteUseCase = removeFavoriteUseCase,
        _addToFavoriteUseCase = addToFavoriteUseCase,
        super(DashboardInitial()) {
    on<GetAllHotelsEvent>((event, emit) async {
      await _getAllHotels(emit);
    });
    on<AddToFavoriteEvent>((event, emit) async {
      await _addToFavorite(event.hotel, emit);
    });

    on<GetAllFavoriteEvent>((event, emit) async {
      await _getAllFavorite(emit);
    });

    on<RemoveConfirmationEvent>((event, emit) async {
      emit(FavoriteRemovedConfirmationState(hotelId: event.hotelId));
    });

    on<RemoveFavoriteEvent>((event, emit) async {
      await _removeFavorite(event.hotelId, emit);
    });
  }

  _addToFavorite(Hotel hotel, Emitter<DashboardState> emit) async {
    final FavoriteRequest request = FavoriteRequest(hotel: hotel);
    return _addToFavoriteUseCase.perform(
        request,
        UseCaseResult(onError: (error) {
          if (error is AlreadyExistException) {
            emit(HotelAlreadyExistState());
          } else {
            print(error.toString());
          }
        }, onFinished: () {
          Set<Hotel> favorites = blocData.favoriteHotels!.toSet();
          favorites.add(hotel);
          blocData = blocData.copyWith(favoriteHotels: favorites.toList());
          emit(HotelAddedSuccessfullyState());
          emit(GetAllFavoriteState(favorites: blocData.favoriteHotels ?? []));
        }));
  }

  _removeFavorite(String hotelId, Emitter<DashboardState> emit) async {
    final RemoveFavoriteRequest request =
        RemoveFavoriteRequest(hotelId: hotelId);
    return _removeFavoriteUseCase.perform(
        request,
        UseCaseResult(onError: (error) {
          print(error.toString());
        }, onFinished: () {
          Set<Hotel> hotels = blocData.favoriteHotels!.toSet();
          hotels.removeWhere((e) => e.hotelId == hotelId);
          blocData = blocData.copyWith(favoriteHotels: hotels.toList());
          emit(GetAllFavoriteState(favorites: blocData.favoriteHotels ?? []));
          emit(FavoriteSuccessfullyRemovedState());
        }));
  }

  _getAllFavorite(Emitter<DashboardState> emit) async {
    return _getAllFavoritesUseCase.perform(UseCaseResult(onSuccess: (data) {
      blocData = blocData.copyWith(favoriteHotels: data);
      emit(GetAllFavoriteState(favorites: blocData.favoriteHotels ?? []));
    }, onError: (error) {
      emit(FavoriteErrorState());
    }));
  }

  _getAllHotels(Emitter<DashboardState> emit) async {
    return _getHotelsUseCase.perform(UseCaseResult(onSuccess: (hotels) {
      blocData = blocData.copyWith(hotels: hotels);
      emit(HotelsLoadedState(
        hotels: blocData.hotels?.hotels ?? [],
        hotelCount: blocData.hotels?.hotelCount ?? 0,
      ));
    }, onError: (error) {
      emit(HotelErrorState());
    }));
  }
}
