import 'package:hotel_booking/data/data.dart';

@Injectable(as: HotelsRepository)
class HotelsRepositoryImplementation implements HotelsRepository {
  final HotelsDataSource _hotelsDataSource;
  final HotelsLocalDatasource _localDatasource;
  final HotelsEntityMapper _hotelsEntityMapper = const HotelsEntityMapper();
  HotelsRepositoryImplementation(
      {required HotelsDataSource hotelsDataSource,
      required HotelsLocalDatasource localDataSource})
      : _hotelsDataSource = hotelsDataSource,
        _localDatasource = localDataSource;

  @override
  Future<HotelEntity> getAllHotels() {
    return _hotelsDataSource.getAllHotels().then((data) {
      return _hotelsEntityMapper.mapToEntity(data);
    });
  }

  @override
  Future addToFavorite(FavoriteRequest request) async {
    return _localDatasource.addToLocal(request.hotel);
  }

  @override
  Future removeFavorite(RemoveFavoriteRequest request) async {
    return _localDatasource.removeFromLocal(request.hotelId);
  }

  @override
  Future<List<Hotel>> getAllFavorites() async {
    var favorites = _localDatasource.getAllFavorites();
    return favorites;
  }
}
