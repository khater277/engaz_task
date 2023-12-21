import 'package:engaz_task/core/errors/api/network_exceptions.dart';
import 'package:engaz_task/core/errors/firebase/realtime/realtime_exceptions.dart';

enum NetworkErrorTypes { noInternetConnection, api, realtime }

abstract class Failure {
  String getMessage();
}

class LocationFailure implements Failure {
  final String message;

  LocationFailure({required this.message});
  @override
  String getMessage() => message;
}

class NoInternetConnection implements Exception {}

class ServerFailure extends Failure {
  final Exception error;
  final NetworkErrorTypes type;

  ServerFailure({
    required this.error,
    required this.type,
  });

  String handleException(e) {
    String result;
    switch (type) {
      case NetworkErrorTypes.noInternetConnection:
        result =
            "There is no internet connection, please check your connection and try again later.";
        break;
      case NetworkErrorTypes.api:
        result = NetworkExceptions.getErrorMessage(
            NetworkExceptions.getDioException(error));
        break;
      case NetworkErrorTypes.realtime:
        result = RealtimeExceptionHandler.generateExceptionMessage(
            RealtimeExceptionHandler.handleException(error));
        break;
      default:
        result = e;
    }
    return result;
  }

  @override
  String getMessage() => handleException(error);
}
