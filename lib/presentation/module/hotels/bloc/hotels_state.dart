part of 'hotels_bloc.dart';

@immutable
abstract class HotelsState extends Equatable {}

class HotelsInitial extends HotelsState {
  @override
  List<Object?> get props => [];
}

class HotelsLoadedState extends HotelsState {
  final List<Hotel> hotels;
  HotelsLoadedState({required this.hotels});
  @override
  List<Object?> get props => [hotels];
}
