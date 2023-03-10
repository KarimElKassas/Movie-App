import 'package:movie_clean/core/network/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  ServerException(this.errorMessageModel);
}

class LocalException implements Exception{
  final String message;

  LocalException(this.message);
}