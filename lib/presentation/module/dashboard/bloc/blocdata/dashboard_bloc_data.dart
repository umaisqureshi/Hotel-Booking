import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';

part 'dashboard_bloc_data.freezed.dart';

@freezed
class DashboardBlocData with _$DashboardBlocData {
  const factory DashboardBlocData(
      {HotelEntity? hotels,
      @Default([]) List<Hotel>? favoriteHotels}) = _DashboardBlocData;
}
