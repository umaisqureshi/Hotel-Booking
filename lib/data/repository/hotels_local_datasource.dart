import 'package:hotel_booking/data/data.dart';

abstract class HotelsLocalDatasource {
  void addToLocal(Hotel hotel);
  Future<List<Hotel>> getAllFavorites();
  void removeFromLocal(String hotelId);
}
