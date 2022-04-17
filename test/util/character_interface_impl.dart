import 'package:marvel/api/model/base/base_response.dart';
import 'package:marvel/api/model/character.dart';
import 'package:marvel/api/model/media/media_details.dart';
import 'package:marvel/api/service/character_interface.dart';
import 'package:marvel/util/api_util.dart';

import 'base_response_impl.dart';
import 'data_response_impl.dart';
import 'json/data_json.dart';

class CharacterInterfaceImpl extends CharacterInterface {
  @override
  Future<DataResponse<BaseResponse>> all(int limit, int offset) async {
    return DataResponseImpl(
      dataImpl: BaseResponseImpl<Character>(
        items: [
          Character.fromJson(characterJson()),
        ],
      ),
    );
  }

  @override
  Future<MediaDetails> media(String url) async {
    return MediaDetails.fromJson({
      'thumbnail': {
        'path': 'https://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784',
        'extension': 'jpg',
      },
    });
  }
}
