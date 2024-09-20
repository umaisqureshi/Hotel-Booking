import 'package:hotel_booking/data/repository/hotels_data_source.dart';
import 'package:hotel_booking/data/repository/hotels_local_datasource.dart';
import 'package:hotel_booking/data/repository/mapper/hotels_entity_mapper.dart';
import 'package:hotel_booking/domain/favorite/add/favorite_request.dart';
import 'package:hotel_booking/domain/favorite/remove/remove_request.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:injectable/injectable.dart';

@injectable
class HotelsRepository {
  final HotelsDataSource _hotelsDataSource;
  final HotelsLocalDatasource _localDatasource;
  final HotelsEntityMapper _hotelsEntityMapper = const HotelsEntityMapper();
  const HotelsRepository(
      {required HotelsDataSource hotelsDataSource,
      required HotelsLocalDatasource localDataSource})
      : _hotelsDataSource = hotelsDataSource,
        _localDatasource = localDataSource;

  Future<HotelEntity> getAllHotels() {
    return _hotelsDataSource.getAllHotels().then((data) {
      return _hotelsEntityMapper.mapToEntity(data);
    });
  }

  Future addToFavorite(FavoriteRequest request) async {
    return _localDatasource.addToLocal(request.hotel);
  }

  Future removeFavorite(RemoveFavoriteRequest request) async {
    return _localDatasource.removeFromLocal(request.hotelId);
  }

  Future<List<Hotel>> getAllFavorites() async {
    var favorites = _localDatasource.getAllFavorites();
    return favorites;
  }
}
