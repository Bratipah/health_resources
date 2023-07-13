import 'package:dart/dart.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'package:health_resources/core/features/healthResources/data/models/api_error_response.dart';
import 'package:health_resources/utils/utils.dart';



typedef NetworkResponse = Future<Either<ApiErrorResponse, Response>>;

NetworkResponse apiCall(
    Future<Response> Function() call) async {
  Response response;
  try {
    response = await call();
  } on DioError catch (e) {
    ApiErrorResponse error = ApiErrorResponse();
    final errorResponse = e.response?.data;
    //if (errorResponse != null) {
    // debugPrint('${error.message}  \n${error.error} \n${error.response} \n${error.requestOptions.path}');
    // debugPrint("The error is $errorResponse");
    error = ApiErrorResponse.fromJson(errorResponse) ??
        ApiErrorResponse((a) => a
          ..code = e.response?.statusCode
          ..message = e.response?.statusMessage);
    debugPrint("The error is $error");
    //} else {
    //    error = ApiErrorResponse((a) =>
    //   a
    //   ..code = e.response?.statusCode
    //   ..message = e.response?.statusMessage
    // );
    // }
    return Left(error);
  }
  return Right(response);
}


String BASE_URL = myrekod_file_url;