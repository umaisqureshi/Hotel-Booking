import 'package:hotel_booking/data/data.dart';

abstract class HotelsDataSource {
  Future<HotelsDto> getAllHotels();
}
