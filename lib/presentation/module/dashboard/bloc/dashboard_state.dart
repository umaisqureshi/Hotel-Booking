part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardState extends Equatable {
  const DashboardState();
}

class DashboardInitial extends DashboardState {
  @override
  List<Object?> get props => [];
}

class HotelAlreadyExistState extends DashboardState implements ListenableState {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class HotelAddedSuccessfullyState extends DashboardState
    implements ListenableState {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class HotelErrorState extends DashboardState implements NoneEquatableState {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class HotelsLoadedState extends DashboardState {
  final List<Hotel> hotels;
  final int hotelCount;
  const HotelsLoadedState({required this.hotels, required this.hotelCount});
  @override
  List<Object?> get props => [hotels];
}


class GetAllFavoriteState extends DashboardState {
  final List<Hotel> favorites;
  GetAllFavoriteState({required this.favorites});
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class FavoriteErrorState extends DashboardState {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class FavoriteRemovedConfirmationState extends DashboardState
    implements ListenableState {
  final String hotelId;
  FavoriteRemovedConfirmationState({required this.hotelId});
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class FavoriteSuccessfullyRemovedState extends DashboardState
    implements ListenableState {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}
