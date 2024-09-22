import 'package:hotel_booking/domain/domain.dart';

class FavoriteRequest extends Request {
  final Hotel hotel;
  const FavoriteRequest({required this.hotel});
}
