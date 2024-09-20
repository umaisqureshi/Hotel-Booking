import 'package:hotel_booking/domain/base/request.dart';

class RemoveFavoriteRequest extends Request {
  final int hotelId;
  const RemoveFavoriteRequest({required this.hotelId});
}
