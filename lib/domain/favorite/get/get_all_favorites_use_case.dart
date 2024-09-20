import 'package:hotel_booking/data/repository/hotels_repository.dart';
import 'package:hotel_booking/domain/base/usecase/supplier_usecase.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllFavoritesUseCase extends SupplierUseCase<List<Hotel>> {
  final HotelsRepository _repository;
  const GetAllFavoritesUseCase({required HotelsRepository repository})
      : _repository = repository;
  @override
  Future<List<Hotel>> task() {
    return _repository.getAllFavorites();
  }
}
