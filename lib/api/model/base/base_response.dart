import 'dart:convert';

import 'package:marvel/api/model/base_model.dart';
import 'package:marvel/util/api_util.dart';

@reflector
class BaseResponse extends BaseModel {
  Map<String, dynamic> data;

  BaseResponse.fromJson(Map<String, dynamic> map)
      : data = map,
        super.fromJson(map);

  List<T> castList<T extends BaseModel>() => toListObject(jsonEncode(data["data"]["results"]));

  T cast<T extends BaseModel>() => toObject(jsonEncode(data["data"]["results"]));

  @override
  Map<String, dynamic> toJson() => {};
}
