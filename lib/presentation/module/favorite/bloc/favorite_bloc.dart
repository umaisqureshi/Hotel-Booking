
import 'package:hotel_booking/domain/base/use_case_result.dart';
import 'package:hotel_booking/domain/favorite/get/get_all_favorites_use_case.dart';
import 'package:hotel_booking/domain/favorite/remove/remove_favorite_use_case.dart';
import 'package:hotel_booking/domain/favorite/remove/remove_request.dart';
import 'package:hotel_booking/presentation/base/state/listenable_state.dart';
import 'package:hotel_booking/presentation/base/state/none_equatable_state.dart';
import 'package:hotel_booking/presentation/module/favorite/bloc/blocdata/favorite_bloc_data.dart';
import 'package:hotel_booking/presentation/presentation.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

@injectable
class FavoriteBloc extends BaseBloc<FavoriteEvent, FavoriteState> {
  final RemoveFavoriteUseCase _removeFavoriteUseCase;
  final GetAllFavoritesUseCase _getAllFavoritesUseCase;
  FavoriteBlocData blocData = const FavoriteBlocData();
  FavoriteBloc(
      {required GetAllFavoritesUseCase getAllFavoritesUseCase,
      required RemoveFavoriteUseCase removeFavoriteUseCase})
      : _getAllFavoritesUseCase = getAllFavoritesUseCase,
        _removeFavoriteUseCase = removeFavoriteUseCase,
        super(FavoriteInitial()) {
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

  _getAllFavorite(Emitter<FavoriteState> emit) async {
    return _getAllFavoritesUseCase.perform(UseCaseResult(onSuccess: (data) {
      blocData = blocData.copyWith(hotels: data);
      emit(GetAllFavoriteState(favorites: blocData.hotels ?? []));
    }, onError: (error) {
      emit(FavoriteErrorState());
    }));
  }

  _removeFavorite(String hotelId, Emitter<FavoriteState> emit) async {
    final RemoveFavoriteRequest request =
        RemoveFavoriteRequest(hotelId: hotelId);
    return _removeFavoriteUseCase.perform(
        request,
        UseCaseResult(onError: (error) {
          print(error.toString());
        }, onFinished: () {
          Set<Hotel> hotels = blocData.hotels!.toSet();
          hotels.removeWhere((e) => e.hotelId == hotelId);
          blocData = blocData.copyWith(hotels: hotels.toList());
          emit(GetAllFavoriteState(favorites: blocData.hotels ?? []));
          emit(FavoriteSuccessfullyRemovedState());
        }));
  }
}
