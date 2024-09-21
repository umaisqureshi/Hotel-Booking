import 'package:hotel_booking/domain/exception/app_exception.dart';

class AlreadyExistException extends AppException {
  AlreadyExistException({required super.message});
}
