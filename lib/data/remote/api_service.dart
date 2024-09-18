import 'package:dio/dio.dart';
import 'package:hotel_booking/data/remote/dto/hotel_dto_mapper.dart';
import 'package:hotel_booking/data/repository/dto/hotels_dto.dart';
import 'package:hotel_booking/data/repository/hotels_data_source.dart';
import 'package:injectable/injectable.dart';

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
