import 'package:dio/dio.dart';
import 'package:marvel/api/model/base/base_response.dart';
import 'package:marvel/util/api_util.dart';

abstract class CharacterInterface {
  Future<DataResponse<BaseResponse>> all(int limit, int offset);

  Future<DataResponse<BaseResponse>> findCharacter(int id);

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
  Future<DataResponse<BaseResponse>> findCharacter(int id) async {
    final response = await dio.get<String>('characters/$id');
    return response.response();
  }
}
