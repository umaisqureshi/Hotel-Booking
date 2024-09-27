import 'package:hotel_booking/domain/favorite/add/favorite_request.dart';
import 'package:hotel_booking/domain/favorite/remove/remove_request.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';

abstract class HotelsRepository {
  Future<HotelEntity> getAllHotels();
  Future addToFavorite(FavoriteRequest request);
  Future removeFavorite(RemoveFavoriteRequest request);
  Future<List<Hotel>> getAllFavorites();
}
