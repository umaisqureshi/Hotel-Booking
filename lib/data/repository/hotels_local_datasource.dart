
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';

abstract class HotelsLocalDatasource {
  void addToLocal(Hotel hotel);
  Future<List<Hotel>> getAllFavorites();
  void removeFromLocal(int hotelId);
}
