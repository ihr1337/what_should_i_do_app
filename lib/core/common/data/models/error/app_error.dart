import 'package:what_should_i_do/core/common/data/models/failure.dart';

class AppError extends Failure {
  const AppError(String message) : super(message);

  @override
  List<Object?> get props => [
        message,
      ];
}
