import 'package:hotel_booking/domain/base/request.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';

class FavoriteRequest extends Request {
  final Hotel hotel;
  const FavoriteRequest({required this.hotel});
}
