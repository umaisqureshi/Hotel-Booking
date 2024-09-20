import 'package:flutter/foundation.dart';
import 'package:hotel_booking/domain/exception/app_exception.dart';
import '../../base/request.dart';
import '../../base/use_case_result.dart';
import '../../base/usecase/usecase.dart';


abstract class ConsumerUseCase<Q extends Request> implements UseCase {
  @protected
  Future task(Q request);

  const ConsumerUseCase();

  Future perform(Q request, UseCaseResult result) async {
    try {
      await task(request);
      result.onFinished?.call();
    } on Exception catch (exception) {
      result.onError?.call(exception);
    } catch (e) {
      result.onError?.call(AppException(message: e.toString()));
    }
  }
}
