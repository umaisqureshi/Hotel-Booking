import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:hotel_booking/presentation/base/bloc/base_bloc.dart';
part 'account_event.dart';
part 'account_state.dart';

@injectable
class AccountBloc extends BaseBloc<AccountEvent, AccountState> {
  AccountBloc() : super(AccountInitial());
}
