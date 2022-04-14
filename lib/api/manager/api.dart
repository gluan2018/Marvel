import 'dart:async';
import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

bool apiIsInitialized = false;
String baseUrl = 'https://gateway.marvel.com:443/v1/public/';

late Dio _dio;

Dio createDio() {
  final dio = Dio(BaseOptions(
    baseUrl: baseUrl,
    responseType: ResponseType.json,
    validateStatus: (statusCode) => statusCode != null,
  ));

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        options.queryParameters.addAll(_createHash());
        handler.next(options);
      },
    ),
  );

  if (kDebugMode) {
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }

  return dio;
}

abstract class API {
  static Dio get currentDio => _dio;

  static Future loadAPI() async {
    _dio = createDio();
    apiIsInitialized = true;
  }
}

String _apiKey = "e3461f78134fa07b7bc9fce12528a161";
String _privateKey = "5c87b21f0808e13ce8e04b4a53ccd7d53e8a72ab";

Map<String, String> _createHash() {
  final time = DateTime.now().millisecondsSinceEpoch.toString();
  final valueMD5 = md5.convert(utf8.encode(time + _privateKey + _apiKey)).toString();

  return {
    "ts": time,
    "hash": valueMD5,
    "apikey": _apiKey,
  };
}
