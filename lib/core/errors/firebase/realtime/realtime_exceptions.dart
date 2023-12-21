import 'package:freezed_annotation/freezed_annotation.dart';

part 'realtime_exceptions.freezed.dart';

@freezed
class RealtimeExceptionHandler
    with _$RealtimeExceptionHandler
    implements Exception {
  const factory RealtimeExceptionHandler.disconnected() = Disconnected;
  const factory RealtimeExceptionHandler.expiredToken() = ExpiredToken;
  const factory RealtimeExceptionHandler.invalidToken() = InvalidToken;
  const factory RealtimeExceptionHandler.maxRetries() = MaxRetries;
  const factory RealtimeExceptionHandler.networkError() = NetworkError;
  const factory RealtimeExceptionHandler.operationFailed() = OperationFailed;
  const factory RealtimeExceptionHandler.overriddenBySet() = OverriddenBySet;
  const factory RealtimeExceptionHandler.permissionDenied() = PermissionDenied;
  const factory RealtimeExceptionHandler.unavailable() = Unavailable;
  const factory RealtimeExceptionHandler.unknownError() = UnknownError;
  const factory RealtimeExceptionHandler.userCodeException() =
      UserCodeException;
  const factory RealtimeExceptionHandler.writeCanceled() = WriteCanceled;

  static RealtimeExceptionHandler handleException(e) {
    RealtimeExceptionHandler status;

    switch (e.code) {
      case -4:
        status = const RealtimeExceptionHandler.disconnected();
        break;
      case -6:
        status = const RealtimeExceptionHandler.expiredToken();
        break;
      case -7:
        status = const RealtimeExceptionHandler.invalidToken();
        break;
      case -8:
        status = const RealtimeExceptionHandler.maxRetries();
        break;
      case -24:
        status = const RealtimeExceptionHandler.networkError();
        break;
      case -2:
        status = const RealtimeExceptionHandler.operationFailed();
        break;
      case -9:
        status = const RealtimeExceptionHandler.overriddenBySet();
        break;
      case -3:
        status = const RealtimeExceptionHandler.permissionDenied();
        break;
      case -10:
        status = const RealtimeExceptionHandler.unavailable();
        break;
      case -999:
        status = const RealtimeExceptionHandler.unknownError();
        break;
      case -11:
        status = const RealtimeExceptionHandler.userCodeException();
        break;
      case -25:
        status = const RealtimeExceptionHandler.writeCanceled();
        break;
      default:
        status = const RealtimeExceptionHandler.unknownError();
    }
    return status;
  }

  static String generateExceptionMessage(
      RealtimeExceptionHandler realtimeExceptionHandler) {
    return realtimeExceptionHandler.when(
      disconnected: () =>
          "The operation had to be aborted due to a network disconnect.",
      expiredToken: () => "The supplied auth token has expired.",
      invalidToken: () =>
          "The specified authentication token is invalid. This can occur when the token is malformed, expired, or the secret that was used to generate it has been revoked.",
      maxRetries: () => "The transaction had too many retries.",
      networkError: () =>
          "The operation could not be performed due to a network error.",
      operationFailed: () => "The server indicated that this operation failed.",
      overriddenBySet: () =>
          "The transaction was overridden by a subsequent set.",
      permissionDenied: () =>
          "This client does not have permission to perform this operation.",
      unavailable: () => "The service is unavailable.",
      unknownError: () =>
          "An unknown error occurred. Please refer to the error message and error details for more information.",
      userCodeException: () => "An exception occurred in user code.",
      writeCanceled: () => "The write was canceled locally.",
    );
  }
}
