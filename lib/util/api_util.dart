import 'dart:convert';

import 'package:reflectable/reflectable.dart';

import '../api/model/base_model.dart';

const reflector = Reflector();

class Reflector extends Reflectable {
  const Reflector() : super(invokingCapability, newInstanceCapability);
}

T toObject<T extends BaseModel>(String data) {
  Map<String, dynamic> json = jsonDecode(data);
  ClassMirror classMirror = reflector.reflectType(T) as ClassMirror;
  return classMirror.newInstance('fromJson', [json]) as T;
}

List<T> toListObject<T extends BaseModel>(String data) {
  List<dynamic> json = jsonDecode(data);
  return json.map((e) {
    ClassMirror classMirror = reflector.reflectType(T) as ClassMirror;
    return classMirror.newInstance('fromJson', [e]) as T;
  }).toList();
}