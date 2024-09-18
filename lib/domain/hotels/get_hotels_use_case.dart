import 'package:hotel_booking/data/repository/hotels_repository.dart';
import 'package:hotel_booking/domain/base/usecase/supplier_usecase.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetHotelsUseCase extends SupplierUseCase<HotelEntity> {
  final HotelsRepository _repository;
  const GetHotelsUseCase({required HotelsRepository repository})
      : _repository = repository;
  @override
  Future<HotelEntity> task() {
    return _repository.getAllHotels();
  }
}
