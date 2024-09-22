
import 'package:hotel_booking/data/data.dart';

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
