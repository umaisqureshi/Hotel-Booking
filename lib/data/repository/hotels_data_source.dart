import 'package:hotel_booking/data/repository/dto/hotels_dto.dart';

abstract class HotelsDataSource {
  Future<HotelsDto> getAllHotels();
}
