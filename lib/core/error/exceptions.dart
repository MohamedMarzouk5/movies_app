import 'package:movies_app/core/network/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  const ServerException({
    required this.errorMessageModel,
  });
}

class LocalDataException implements Exception {
  final String message;

  LocalDataException(this.message);
}
