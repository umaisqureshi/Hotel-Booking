import 'package:hotel_booking/domain/domain.dart';

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
