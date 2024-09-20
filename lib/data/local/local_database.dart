import 'package:hive_flutter/hive_flutter.dart';
import 'package:hotel_booking/data/repository/hotels_local_datasource.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HotelsLocalDatasource)
class LocalDatabaseService extends HotelsLocalDatasource {
  var box = Hive.box<Hotel>("FavoriteBox");
  @override
  void addToLocal(Hotel hotel) async {
    box.put(hotel.hotelId, hotel);
  }

  @override
  Future<List<Hotel>> getAllFavorites() async {
    List<Hotel> allHotels = box.values.toList();
    return allHotels;
  }

  @override
  void removeFromLocal(int hotelId) {
    if (box.containsKey(hotelId)) {
      box.delete(hotelId);
    }
  }
}
