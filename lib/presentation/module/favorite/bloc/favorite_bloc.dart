import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:hotel_booking/presentation/base/bloc/base_bloc.dart';
part 'favorite_event.dart';
part 'favorite_state.dart';

@injectable
class FavoriteBloc extends BaseBloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteInitial());
}
