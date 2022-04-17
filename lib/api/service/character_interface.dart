import 'dart:async';

import 'package:dio/dio.dart';
import 'package:marvel/api/model/base/base_response.dart';
import 'package:marvel/api/model/media/media_details.dart';
import 'package:marvel/util/api_util.dart';

abstract class CharacterInterface {
  Future<DataResponse<BaseResponse>> all(int limit, int offset);

  Future<MediaDetails> media(String url);

  factory CharacterInterface.create({required Dio dio}) => _CharacterInterface(dio: dio);

  CharacterInterface();
}

class _CharacterInterface extends CharacterInterface {
  final Dio dio;

  _CharacterInterface({
    required this.dio,
  }) : super();

  @override
  Future<DataResponse<BaseResponse>> all(int limit, int offset) async {
    final response = await dio.get<String>('characters', queryParameters: {'limit': limit, 'offset': offset});
    return response.response();
  }

  @override
  Future<MediaDetails> media(String url) async {
    final response = await dio.requestUri<String>(Uri.parse(url));
    return response.response<BaseResponse>().data.castList<MediaDetails>()[0];
  }
}
