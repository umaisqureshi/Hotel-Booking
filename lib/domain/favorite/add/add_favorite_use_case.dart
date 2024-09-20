import 'package:hotel_booking/data/repository/hotels_repository.dart';
import 'package:hotel_booking/domain/base/usecase/consumer_use_case.dart';
import 'package:hotel_booking/domain/favorite/add/favorite_request.dart';
import 'package:injectable/injectable.dart';

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
