import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';

part 'hotel_bloc_data.freezed.dart';

@freezed
class HotelBlocData with _$HotelBlocData {
  const factory HotelBlocData({
    HotelEntity? hotels,
  }) = _HotelBlocData;
}
