import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking/domain/base/use_case_result.dart';
import 'package:hotel_booking/domain/favorite/add/add_favorite_use_case.dart';
import 'package:hotel_booking/domain/favorite/add/favorite_request.dart';
import 'package:hotel_booking/domain/hotels/get_hotels_use_case.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:hotel_booking/presentation/base/state/none_equatable_state.dart';
import 'package:hotel_booking/presentation/module/hotels/bloc/blocdata/hotel_bloc_data.dart';
import 'package:injectable/injectable.dart';
import 'package:hotel_booking/presentation/base/bloc/base_bloc.dart';
part 'hotels_event.dart';
part 'hotels_state.dart';

@injectable
class HotelBloc extends BaseBloc<HotelsEvent, HotelsState> {
  final GetHotelsUseCase _getHotelsUseCase;
  final AddToFavoriteUseCase _addToFavoriteUseCase;

  HotelBlocData blocData = const HotelBlocData();
  HotelBloc(
      {required GetHotelsUseCase getHotelUseCase,
      required AddToFavoriteUseCase addToFavoriteUseCase})
      : _getHotelsUseCase = getHotelUseCase,
        _addToFavoriteUseCase = addToFavoriteUseCase,
        super(HotelsInitial()) {
    on<GetAllHotelsEvent>((event, emit) async {
      await _getAllHotels(emit);
    });
    on<AddToFavoriteEvent>((event, emit) async {
      await _addToFavorite(event.hotel, emit);
    });
  }

  _addToFavorite(Hotel hotel, Emitter<HotelsState> emit) async {
    final FavoriteRequest request = FavoriteRequest(hotel: hotel);
    return _addToFavoriteUseCase.perform(
        request,
        UseCaseResult(
            onError: (error) {},
            onFinished: () {
              print("Successfully added");
            }));
  }

  _getAllHotels(Emitter<HotelsState> emit) async {
    return _getHotelsUseCase.perform(UseCaseResult(onSuccess: (hotels) {
      blocData = blocData.copyWith(hotels: hotels);
      emit(HotelsLoadedState(
        hotels: blocData.hotels?.hotels ?? [],
        HotelCount: blocData.hotels?.hotelCount ?? 0,
      ));
    }, onError: (error) {
      emit(HotelErrorState());
    }));
  }
}
