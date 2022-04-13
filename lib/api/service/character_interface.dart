import 'package:dio/dio.dart';
import 'package:marvel/api/manager/api.dart';
import 'package:marvel/api/model/character.dart';

abstract class CharacterInterface {
  Future<ListDataResponse<Character>> all(int limit, int offset);

  Future<Response<Character>> findCharacter(int id);
}
