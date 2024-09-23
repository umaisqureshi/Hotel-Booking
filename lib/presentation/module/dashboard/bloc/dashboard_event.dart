part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardEvent extends Equatable {
  const DashboardEvent();
}

class GetAllHotelsEvent extends DashboardEvent {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class AddToFavoriteEvent extends DashboardEvent implements NoneEquatableState {
  final Hotel hotel;
  const AddToFavoriteEvent({required this.hotel});
  @override
  List<Object?> get props => [hotel];
}

class RemoveFavoriteEvent extends DashboardEvent implements NoneEquatableState {
  final String hotelId;
  const RemoveFavoriteEvent({required this.hotelId});
  @override
  List<Object?> get props => [hotelId];
}

class RemoveConfirmationEvent extends DashboardEvent
    implements ListenableState, NoneEquatableState {
  final String hotelId;
  const RemoveConfirmationEvent({required this.hotelId});
  @override
  List<Object?> get props => [hotelId];
}

class GetAllFavoriteEvent extends DashboardEvent {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}