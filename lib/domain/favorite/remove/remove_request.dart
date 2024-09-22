
import 'package:hotel_booking/domain/domain.dart';

class RemoveFavoriteRequest extends Request {
  final String hotelId;
  const RemoveFavoriteRequest({required this.hotelId});
}
