part of 'account_bloc.dart';

@immutable
abstract class AccountState extends Equatable {}

class AccountInitial extends AccountState {
  @override
  List<Object?> get props => [];
}