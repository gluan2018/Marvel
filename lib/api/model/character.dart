import 'dart:convert';

import 'package:marvel/api/model/base_model.dart';
import 'package:marvel/api/model/media/media.dart';
import 'package:marvel/util/api_util.dart';

@reflector
class Character extends BaseModel {
  int id;
  String name;
  String thumbnail;
  String description;
  String thumbnailFormat;
  List<Media> comics;
  List<Media> series;
  List<Media> history;

  Character.fromJson(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        comics = toListObject(jsonEncode(map["comics"]["items"])),
        series = toListObject(jsonEncode(map["stories"]["items"])),
        history = toListObject(jsonEncode(map["stories"]["items"])),
        description = map["description"],
        thumbnail = map["thumbnail"]["path"],
        thumbnailFormat = map["thumbnail"]["extension"],
        super.fromJson(map);

  @override
  Map<String, dynamic> toJson() => {};
}
