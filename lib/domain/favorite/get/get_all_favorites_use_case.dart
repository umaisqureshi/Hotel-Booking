import 'package:hotel_booking/domain/domain.dart';

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
