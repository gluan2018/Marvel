import 'package:marvel/api/model/base_model.dart';
import 'package:marvel/util/api_util.dart';

@reflector
class Character extends BaseModel {
  int? id;
  String? name;
  List<dynamic>? comics;
  List<dynamic>? series;

  Character.fromJson(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        comics = map["comics"],
        series = map["series"],
        super.fromJson(map);

  @override
  Map<String, dynamic> toJson() => {};
}
