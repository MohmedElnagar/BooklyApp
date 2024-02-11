import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioEx(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("connect timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure("send time out with ApiServer");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("receiveTimeout with ApiServer");

      case DioExceptionType.cancel:
        return ServerFailure("request to ApiServer was canceld");
      case DioExceptionType.badResponse:
        return ServerFailure.fromRespones(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.unknown:
        if (dioException.message!.contains("SocketException")) {
          return ServerFailure("No Enternet connection");
        }
        return ServerFailure("Unexpected Error,Please try again! ");
      default:
        return ServerFailure("oops there was an error ,please try again");
    }
  }
  factory ServerFailure.fromRespones(int statuscode, dynamic respones) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailure(respones["error"]["message"]);
    } else if (statuscode == 404) {
      return ServerFailure("Your request not found,please try later ");
    } else if (statuscode == 500) {
      return ServerFailure("internal server error ,please try later");
    } else {
      return ServerFailure("oops there was an error ,please try again");
    }
  }
}
