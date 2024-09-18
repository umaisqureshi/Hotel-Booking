import 'package:hotel_booking/data/remote/dto_mapper.dart';
import 'package:hotel_booking/data/repository/dto/hotels_dto.dart';

class HotelDtoMapper extends DtoMapper<HotelsDto> {
  @override
  HotelsDto mapDtoToData(Map<String, dynamic> result) {
    return HotelsDto.fromJson(result);
  }
}
