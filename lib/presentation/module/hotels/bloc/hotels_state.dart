part of 'hotels_bloc.dart';

@immutable
abstract class HotelsState extends Equatable {
  const HotelsState();
}

class HotelsInitial extends HotelsState {
  @override
  List<Object?> get props => [];
}

class HotelErrorState extends HotelsState implements NoneEquatableState {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class HotelsLoadedState extends HotelsState {
  final List<Hotel> hotels;
  const HotelsLoadedState({required this.hotels});
  @override
  List<Object?> get props => [hotels];
}
