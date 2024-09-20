import 'package:hotel_booking/data/repository/hotels_repository.dart';
import 'package:hotel_booking/domain/base/usecase/consumer_use_case.dart';
import 'package:hotel_booking/domain/favorite/remove/remove_request.dart';
import 'package:injectable/injectable.dart';

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
