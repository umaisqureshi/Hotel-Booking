import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:hotel_booking/presentation/base/bloc/base_bloc.dart';
part 'hotels_event.dart';
part 'hotels_state.dart';

@injectable
class HotelBloc extends BaseBloc<HotelsEvent, HotelsState> {
  HotelBloc() : super(HotelsInitial());
}
