import 'package:marvel/api/model/base/base_response.dart';
import 'package:marvel/api/model/base_model.dart';

final _EmptyBaseModel emptyBase = _EmptyBaseModel();

class _EmptyBaseModel extends BaseModel {
  _EmptyBaseModel() : super.fromJson({});

  @override
  Map<String, dynamic> toJson() => {};
}

class BaseResponseImpl<BM> extends BaseResponse {
  BaseResponseImpl({
    this.items,
    this.item,
  }) : super.fromJson({});

  final List<BM>? items;
  final BM? item;

  @override
  T cast<T extends BaseModel>() => (item ?? emptyBase) as T;

  @override
  List<T> castList<T extends BaseModel>() => (items ?? []) as List<T>;
}
