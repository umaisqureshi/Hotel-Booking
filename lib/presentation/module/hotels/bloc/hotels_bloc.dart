import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking/domain/base/use_case_result.dart';
import 'package:hotel_booking/domain/hotels/get_hotels_use_case.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:hotel_booking/presentation/module/hotels/bloc/blocdata/hotel_bloc_data.dart';
import 'package:injectable/injectable.dart';
import 'package:hotel_booking/presentation/base/bloc/base_bloc.dart';
part 'hotels_event.dart';
part 'hotels_state.dart';

@injectable
class HotelBloc extends BaseBloc<HotelsEvent, HotelsState> {
  final GetHotelsUseCase _getHotelsUseCase;
  HotelBlocData blocData = const HotelBlocData();
  HotelBloc({required GetHotelsUseCase getHotelUseCase})
      : _getHotelsUseCase = getHotelUseCase,
        super(HotelsInitial()) {
    on<GetAllHotelsEvent>((event, emit) async {
      await _getAllHotels(emit);
    });
  }
  _getAllHotels(Emitter<HotelsState> emit) async {
    return _getHotelsUseCase.perform(UseCaseResult(onSuccess: (hotels) {
      blocData = blocData.copyWith(hotels: hotels);
      emit(HotelsLoadedState(hotels: blocData.hotels?.hotels ?? []));
    }, onError: (error) {
      log(error.toString());
    }));
  }
}
