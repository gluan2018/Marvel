import 'package:marvel/api/model/base_model.dart';
import 'package:marvel/util/api_util.dart';

@reflector
class Media extends BaseModel {
  String name;
  String resourceUri;


  Media.fromJson(Map<String, dynamic> map)
      : name = map["name"],
        resourceUri = map["resourceURI"],
        super.fromJson(map);

  @override
  Map<String, dynamic> toJson() => {};
}
