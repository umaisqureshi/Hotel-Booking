part of 'hotels_bloc.dart';

@immutable
abstract class HotelsState extends Equatable {
  const HotelsState();
}

class HotelsInitial extends HotelsState {
  @override
  List<Object?> get props => [];
}

class HotelAlreadyExistState extends HotelsState implements ListenableState {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class HotelAddedSuccessfullyState extends HotelsState
    implements ListenableState {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class HotelErrorState extends HotelsState implements NoneEquatableState {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class HotelsLoadedState extends HotelsState {
  final List<Hotel> hotels;
  final int HotelCount;
  const HotelsLoadedState({required this.hotels, required this.HotelCount});
  @override
  List<Object?> get props => [hotels];
}
