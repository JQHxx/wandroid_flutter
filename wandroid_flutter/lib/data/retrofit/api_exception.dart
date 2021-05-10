class ApiException implements Exception {
  final String message;
  int errorCode;

  ApiException(this.message, {int errorCode});
}
