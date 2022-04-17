import 'package:marvel/api/model/base_model.dart';
import 'package:marvel/util/api_util.dart';

class DataResponseImpl<T extends BaseModel> extends DataResponse<T> {
  DataResponseImpl({
    required this.dataImpl,
  }) : super(null);

  final T dataImpl;

  @override
  T get data => dataImpl;

  @override
  bool get isSuccessful => true;
}
