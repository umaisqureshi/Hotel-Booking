import 'package:hotel_booking/data/data.dart';

@Injectable(as: HotelsDataSource)
class HotelApiService extends HotelsDataSource {
  final dio = Dio();
  final HotelDtoMapper _hotelDtoMapper = HotelDtoMapper();
  @override
  Future<HotelsDto> getAllHotels() async {
    final response =
        await dio.get('https://dkndmolrswy7b.cloudfront.net/hotels.json');
    if (response.statusCode == 200 || response.statusCode == 201) {
      return _hotelDtoMapper.mapToData(response.data);
    } else {
      throw Exception(response.statusMessage);
    }
  }
}
