import 'package:hotel_booking/domain/domain.dart';

@injectable
class RemoveFavoriteUseCase extends ConsumerUseCase<RemoveFavoriteRequest> {
  final HotelsRepository _repository;
  const RemoveFavoriteUseCase({required HotelsRepository repository})
      : _repository = repository;
  @override
  Future task(RemoveFavoriteRequest request) {
    return _repository.removeFavorite(request);
  }
}
