import 'package:hotel_booking/domain/base/request.dart';

class RemoveFavoriteRequest extends Request {
  final String hotelId;
  const RemoveFavoriteRequest({required this.hotelId});
}
