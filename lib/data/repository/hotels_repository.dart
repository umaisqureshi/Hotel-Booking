import 'package:hotel_booking/data/repository/hotels_data_source.dart';
import 'package:hotel_booking/data/repository/mapper/hotels_entity_mapper.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:injectable/injectable.dart';

@injectable
class HotelsRepository {
  final HotelsDataSource _hotelsDataSource;
  final HotelsEntityMapper _hotelsEntityMapper = const HotelsEntityMapper();
  const HotelsRepository({required HotelsDataSource hotelsDataSource})
      : _hotelsDataSource = hotelsDataSource;

  Future<HotelEntity> getAllHotels() {
    return _hotelsDataSource.getAllHotels().then((data) {
      return _hotelsEntityMapper.mapToEntity(data);
    });
  }
}
