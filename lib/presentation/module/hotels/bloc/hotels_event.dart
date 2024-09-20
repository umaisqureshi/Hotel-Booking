part of 'hotels_bloc.dart';

@immutable
abstract class HotelsEvent extends Equatable {
  const HotelsEvent();
}

class GetAllHotelsEvent extends HotelsEvent {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class AddToFavoriteEvent extends HotelsEvent implements NoneEquatableState {
  final Hotel hotel;
  const AddToFavoriteEvent({required this.hotel});
  @override
  List<Object?> get props => [hotel];
}
