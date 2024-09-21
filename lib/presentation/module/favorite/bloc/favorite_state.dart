part of 'favorite_bloc.dart';

@immutable
abstract class FavoriteState extends Equatable {}

class FavoriteInitial extends FavoriteState {
  @override
  List<Object?> get props => [];
}

class GetAllFavoriteState extends FavoriteState {
  final List<Hotel> favorites;
  GetAllFavoriteState({required this.favorites});
  @override
  List<Object?> get props => [favorites, DateTime.now().microsecond];
}

class FavoriteErrorState extends FavoriteState {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class FavoriteRemovedConfirmationState extends FavoriteState
    implements ListenableState {
  final String hotelId;
  FavoriteRemovedConfirmationState({required this.hotelId});
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class FavoriteSuccessfullyRemovedState extends FavoriteState
    implements ListenableState {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}
