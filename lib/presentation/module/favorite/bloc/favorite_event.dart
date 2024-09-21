part of 'favorite_bloc.dart';

@immutable
abstract class FavoriteEvent extends Equatable {
  const FavoriteEvent();
}

class RemoveFavoriteEvent extends FavoriteEvent implements NoneEquatableState {
  final String hotelId;
  const RemoveFavoriteEvent({required this.hotelId});
  @override
  List<Object?> get props => [hotelId];
}

class RemoveConfirmationEvent extends FavoriteEvent
    implements ListenableState, NoneEquatableState {
  final String hotelId;
  const RemoveConfirmationEvent({required this.hotelId});
  @override
  List<Object?> get props => [hotelId];
}

class GetAllFavoriteEvent extends FavoriteEvent implements NoneEquatableState {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}
