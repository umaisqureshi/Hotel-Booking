import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class NoneEquatableState extends Equatable {
  @override
  List<Object?> get props => [const Uuid().v4()];

  @override
  bool? get stringify => true;
}
