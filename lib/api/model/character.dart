import 'package:marvel/api/model/base_model.dart';
import 'package:marvel/util/api_util.dart';

@reflector
class Character extends BaseModel {
  int id;
  String name;
  String thumbnail;
  String description;
  String thumbnailFormat;

  Character.fromJson(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        description = map["description"],
        thumbnail = map["thumbnail"]["path"],
        thumbnailFormat = map["thumbnail"]["extension"],
        super.fromJson(map);

  @override
  Map<String, dynamic> toJson() => {};
}
