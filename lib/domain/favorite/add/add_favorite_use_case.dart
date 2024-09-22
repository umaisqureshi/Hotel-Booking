
import 'package:hotel_booking/domain/domain.dart';

@injectable
class AddToFavoriteUseCase extends ConsumerUseCase<FavoriteRequest> {
  final HotelsRepository _repository;
  const AddToFavoriteUseCase({required HotelsRepository repository})
      : _repository = repository;
  @override
  Future task(FavoriteRequest request) {
    return _repository.addToFavorite(request);
  }
}
