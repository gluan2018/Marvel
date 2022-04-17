
import 'package:marvel/api/model/base_model.dart';
import 'package:marvel/util/api_util.dart';

@reflector
class MediaDetails extends BaseModel {
  String? thumbnail;
  String? thumbnailFormat;

  MediaDetails.fromJson(Map<String, dynamic> map)
      : thumbnail = map["thumbnail"]?["path"],
        thumbnailFormat = map["thumbnail"]?["extension"],
        super.fromJson(map);

  @override
  Map<String, dynamic> toJson() => {};

}