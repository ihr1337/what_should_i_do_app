import 'package:dio/dio.dart';

import 'package:what_should_i_do/core/common/data/models/failure.dart';

abstract class DataFailure extends Failure {
  const DataFailure(String message) : super(message);
}

class LocalError extends DataFailure {
  const LocalError(String message) : super(message);

  getMessage() {
    return message;
  }

  @override
  List<Object?> get props => [message];
}

class CacheError extends LocalError {
  const CacheError(String message) : super(message);

  @override
  List<Object?> get props => [];
}

// ignore: must_be_immutable
class ResponseError extends DataFailure {
  int _errorCode = 0;

  ResponseError(String message, this._errorCode) : super(message);

  getErrorCode() {
    return _errorCode;
  }

  getErrorMessage() {
    return message;
  }

  // ignore: unused_element
  // for future needs
  _handleError(DioError error) {
    var code = error.response?.statusCode;
    code ??= 0;
    _errorCode = code;

    switch (error.type) {
      case DioErrorType.cancel:
        break;
      case DioErrorType.connectTimeout:
        break;
      case DioErrorType.other:
        break;
      case DioErrorType.receiveTimeout:
        break;
      case DioErrorType.response:
        break;
      case DioErrorType.sendTimeout:
        break;
    }
    return message;
  }

  @override
  List<Object> get props => [
        message,
        _errorCode,
      ];
}
