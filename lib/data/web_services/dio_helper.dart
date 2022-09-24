import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:payment/core/utils/app_constants.dart';

import '../../core/network/api_consumer.dart';

class DioHelper implements ApiConsumer {
  Dio dio;
  DioHelper({required this.dio}) {
    dio.options
      ..baseUrl = AppConstants.baseUrl
      ..responseType = ResponseType.json
      ..contentType = AppConstants.applicationJson
      ..receiveDataWhenStatusError = true;
  }

  @override
  Future get({required String path, Map<String, dynamic>? query}) async {
    try {
      Response response = await dio.get(path, queryParameters: query);
      return response.data;
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
  }

  @override
  Future post(
      {required String path,
      Map<String, dynamic>? query,
      Map<String, dynamic>? body}) async {
    try {
      Response response =
          await dio.post(path, queryParameters: query, data: body);
      return response.data;
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
  }
}
