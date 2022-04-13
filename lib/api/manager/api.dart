import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../util/api_util.dart';
import '../model/base_model.dart';

bool apiIsInitialized = false;
String appVersion = "";

late Dio _dio;

Dio createDio() => Dio(BaseOptions(
      baseUrl: "http://api.epopi.brlinvestimentos.com/api",
      headers: {
        "AppVersion": appVersion,
      },
      validateStatus: (statusCode) => statusCode != null,
    ))._apply((dio) {
      dio.interceptors.add(
        InterceptorsWrapper(
          onError: (error, handler) async {},
          onRequest: (options, handler) async {},
        ),
      );
      if (kDebugMode) dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    });

abstract class API {
  static Dio get currentDio => _dio;

  static Future loadAPI() async {
    _dio = createDio();
    apiIsInitialized = true;
  }
}

///Represents data response from server, and try create object from T.
class DataResponse<T extends BaseModel> {
  ///Response from server.
  Response<String> response;

  DataResponse(this.response);

  ///Create object from T and Response<String>.
  T get data => toObject<T>(response.data!);

  //Return if status code is between 200 and 300.
  bool get isSuccessful => response.isSuccessful;
}

class ListDataResponse<T extends BaseModel> {
  Response<String>? response;

  ListDataResponse(this.response);

  List<T> get data {
    if (response == null || response!.data == null) {
      throw Exception("A resposta ou corpo não pode ser nulo");
    }
    return toListObject<T>(response!.data!);
  }

  bool get isSuccessful => response?.isSuccessful ?? false;
}

extension DioExtends on Dio {
  Dio _apply(Function(Dio) function) {
    function(this);
    return this;
  }
}

extension ResponseData on Response<String> {
  DataResponse<T> response<T extends BaseModel>() => DataResponse<T>(this);

  ListDataResponse<T> responseList<T extends BaseModel>() => ListDataResponse<T>(this);
}

extension StatusCode on Response {
  bool get isSuccessful {
    return statusCode != null && (statusCode ?? -1) >= 200 && (statusCode ?? -1) <= 300;
  }
}
