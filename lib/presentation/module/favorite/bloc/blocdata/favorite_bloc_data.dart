import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';

part 'favorite_bloc_data.freezed.dart';

@freezed
class FavoriteBlocData with _$FavoriteBlocData {
  const factory FavoriteBlocData({@Default([]) List<Hotel>? hotels}) =
      _FavoriteBlocData;
}
