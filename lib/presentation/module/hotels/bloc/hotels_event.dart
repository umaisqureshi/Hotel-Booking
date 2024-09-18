part of 'hotels_bloc.dart';

@immutable
abstract class HotelsEvent extends Equatable {
  const HotelsEvent();
}

class GetAllHotelsEvent extends HotelsEvent {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}
