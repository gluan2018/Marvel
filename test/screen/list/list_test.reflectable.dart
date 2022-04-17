// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.
// @dart = 2.12

import 'dart:core';
import 'package:marvel/api/model/base/base_response.dart' as prefix3;
import 'package:marvel/api/model/character.dart' as prefix1;
import 'package:marvel/api/model/media/media.dart' as prefix4;
import 'package:marvel/api/model/media/media_details.dart' as prefix2;
import 'package:marvel/util/api_util.dart' as prefix0;

// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const
// ignore_for_file: implementation_imports

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.Reflector(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'Character',
            r'.Character',
            7,
            0,
            const prefix0.Reflector(),
            const <int>[0, 1, 2, 3, 4, 5, 6, 7, 13, 30],
            const <int>[
              31,
              32,
              33,
              34,
              35,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23,
              24,
              25,
              26,
              27,
              28,
              29
            ],
            const <int>[],
            -1,
            {},
            {},
            {
              r'fromJson': (bool b) =>
                  (map) => b ? prefix1.Character.fromJson(map) : null
            },
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.NonGenericClassMirrorImpl(
            r'MediaDetails',
            r'.MediaDetails',
            7,
            1,
            const prefix0.Reflector(),
            const <int>[8, 9, 36, 41],
            const <int>[31, 32, 33, 34, 35, 36, 37, 38, 39, 40],
            const <int>[],
            -1,
            {},
            {},
            {
              r'fromJson': (bool b) =>
                  (map) => b ? prefix2.MediaDetails.fromJson(map) : null
            },
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.NonGenericClassMirrorImpl(
            r'BaseResponse',
            r'.BaseResponse',
            7,
            2,
            const prefix0.Reflector(),
            const <int>[10, 42, 43, 44, 47],
            const <int>[31, 32, 33, 34, 35, 42, 43, 44, 45, 46],
            const <int>[],
            -1,
            {},
            {},
            {
              r'fromJson': (bool b) =>
                  (map) => b ? prefix3.BaseResponse.fromJson(map) : null
            },
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.NonGenericClassMirrorImpl(
            r'Media',
            r'.Media',
            7,
            3,
            const prefix0.Reflector(),
            const <int>[11, 12, 48, 53],
            const <int>[31, 32, 33, 34, 35, 48, 49, 50, 51, 52],
            const <int>[],
            -1,
            {},
            {},
            {
              r'fromJson': (bool b) =>
                  (map) => b ? prefix4.Media.fromJson(map) : null
            },
            -1,
            -1,
            const <int>[-1],
            null,
            null)
      ],
      <m.DeclarationMirror>[
        r.VariableMirrorImpl(
            r'id', 32773, 0, const prefix0.Reflector(), -1, 4, 4, null, null),
        r.VariableMirrorImpl(
            r'name', 32773, 0, const prefix0.Reflector(), -1, 5, 5, null, null),
        r.VariableMirrorImpl(r'thumbnail', 32773, 0, const prefix0.Reflector(),
            -1, 5, 5, null, null),
        r.VariableMirrorImpl(r'description', 32773, 0,
            const prefix0.Reflector(), -1, 5, 5, null, null),
        r.VariableMirrorImpl(r'thumbnailFormat', 32773, 0,
            const prefix0.Reflector(), -1, 5, 5, null, null),
        r.VariableMirrorImpl(r'comics', 2129925, 0, const prefix0.Reflector(),
            -1, 6, 7, null, null),
        r.VariableMirrorImpl(r'series', 2129925, 0, const prefix0.Reflector(),
            -1, 6, 7, null, null),
        r.VariableMirrorImpl(r'history', 2129925, 0, const prefix0.Reflector(),
            -1, 6, 7, null, null),
        r.VariableMirrorImpl(r'thumbnail', 32773, 1, const prefix0.Reflector(),
            -1, 8, 8, null, null),
        r.VariableMirrorImpl(r'thumbnailFormat', 32773, 1,
            const prefix0.Reflector(), -1, 8, 8, null, null),
        r.VariableMirrorImpl(r'data', 2129925, 2, const prefix0.Reflector(), -1,
            9, 10, null, null),
        r.VariableMirrorImpl(
            r'name', 32773, 3, const prefix0.Reflector(), -1, 5, 5, null, null),
        r.VariableMirrorImpl(r'resourceUri', 32773, 3,
            const prefix0.Reflector(), -1, 5, 5, null, null),
        r.MethodMirrorImpl(r'toJson', 4325378, 0, -1, 9, 10, null,
            const <int>[], const prefix0.Reflector(), null),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 0, 14),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 0, 15),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 1, 16),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 1, 17),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 2, 18),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 2, 19),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 3, 20),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 3, 21),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 4, 22),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 4, 23),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 5, 24),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 5, 25),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 6, 26),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 6, 27),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 7, 28),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 7, 29),
        r.MethodMirrorImpl(r'fromJson', 0, 0, -1, 0, 0, null, const <int>[0],
            const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'==', 131074, -1, -1, 11, 11, null, const <int>[9],
            const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'toString', 131074, -1, -1, 5, 5, null,
            const <int>[], const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'noSuchMethod', 65538, -1, -1, -1, -1, null,
            const <int>[10], const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'hashCode', 131075, -1, -1, 4, 4, null,
            const <int>[], const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'runtimeType', 131075, -1, -1, 12, 12, null,
            const <int>[], const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'toJson', 4325378, 1, -1, 9, 10, null,
            const <int>[], const prefix0.Reflector(), null),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 8, 37),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 8, 38),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 9, 39),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 9, 40),
        r.MethodMirrorImpl(r'fromJson', 0, 1, -1, 1, 1, null, const <int>[11],
            const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'castList', 4325378, 2, -1, 13, 14, null,
            const <int>[], const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'cast', 2, 2, -1, -1, -1, null, const <int>[],
            const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'toJson', 4325378, 2, -1, 9, 10, null,
            const <int>[], const prefix0.Reflector(), null),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 10, 45),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 10, 46),
        r.MethodMirrorImpl(r'fromJson', 0, 2, -1, 2, 2, null, const <int>[14],
            const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'toJson', 4325378, 3, -1, 9, 10, null,
            const <int>[], const prefix0.Reflector(), null),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 11, 49),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 11, 50),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 12, 51),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 12, 52),
        r.MethodMirrorImpl(r'fromJson', 0, 3, -1, 3, 3, null, const <int>[16],
            const prefix0.Reflector(), null)
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(r'map', 2129926, 30, const prefix0.Reflector(),
            -1, 9, 10, null, null, null, null),
        r.ParameterMirrorImpl(r'_id', 32870, 15, const prefix0.Reflector(), -1,
            4, 4, null, null, null, null),
        r.ParameterMirrorImpl(r'_name', 32870, 17, const prefix0.Reflector(),
            -1, 5, 5, null, null, null, null),
        r.ParameterMirrorImpl(r'_thumbnail', 32870, 19,
            const prefix0.Reflector(), -1, 5, 5, null, null, null, null),
        r.ParameterMirrorImpl(r'_description', 32870, 21,
            const prefix0.Reflector(), -1, 5, 5, null, null, null, null),
        r.ParameterMirrorImpl(r'_thumbnailFormat', 32870, 23,
            const prefix0.Reflector(), -1, 5, 5, null, null, null, null),
        r.ParameterMirrorImpl(r'_comics', 2130022, 25,
            const prefix0.Reflector(), -1, 6, 7, null, null, null, null),
        r.ParameterMirrorImpl(r'_series', 2130022, 27,
            const prefix0.Reflector(), -1, 6, 7, null, null, null, null),
        r.ParameterMirrorImpl(r'_history', 2130022, 29,
            const prefix0.Reflector(), -1, 6, 7, null, null, null, null),
        r.ParameterMirrorImpl(r'other', 32774, 31, const prefix0.Reflector(),
            -1, 15, 15, null, null, null, null),
        r.ParameterMirrorImpl(r'invocation', 32774, 33,
            const prefix0.Reflector(), -1, 16, 16, null, null, null, null),
        r.ParameterMirrorImpl(r'map', 2129926, 41, const prefix0.Reflector(),
            -1, 9, 10, null, null, null, null),
        r.ParameterMirrorImpl(r'_thumbnail', 32870, 38,
            const prefix0.Reflector(), -1, 8, 8, null, null, null, null),
        r.ParameterMirrorImpl(r'_thumbnailFormat', 32870, 40,
            const prefix0.Reflector(), -1, 8, 8, null, null, null, null),
        r.ParameterMirrorImpl(r'map', 2129926, 47, const prefix0.Reflector(),
            -1, 9, 10, null, null, null, null),
        r.ParameterMirrorImpl(r'_data', 2130022, 46, const prefix0.Reflector(),
            -1, 9, 10, null, null, null, null),
        r.ParameterMirrorImpl(r'map', 2129926, 53, const prefix0.Reflector(),
            -1, 9, 10, null, null, null, null),
        r.ParameterMirrorImpl(r'_name', 32870, 50, const prefix0.Reflector(),
            -1, 5, 5, null, null, null, null),
        r.ParameterMirrorImpl(r'_resourceUri', 32870, 52,
            const prefix0.Reflector(), -1, 5, 5, null, null, null, null)
      ],
      <Type>[
        prefix1.Character,
        prefix2.MediaDetails,
        prefix3.BaseResponse,
        prefix4.Media,
        int,
        String,
        const m.TypeValue<List<prefix4.Media>>().type,
        List,
        String,
        const m.TypeValue<Map<String, dynamic>>().type,
        Map,
        bool,
        Type,
        const r.FakeType(r'dart.core.List<T>'),
        List,
        Object,
        Invocation
      ],
      4,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'toJson': (dynamic instance) => instance.toJson,
        r'id': (dynamic instance) => instance.id,
        r'name': (dynamic instance) => instance.name,
        r'thumbnail': (dynamic instance) => instance.thumbnail,
        r'description': (dynamic instance) => instance.description,
        r'thumbnailFormat': (dynamic instance) => instance.thumbnailFormat,
        r'comics': (dynamic instance) => instance.comics,
        r'series': (dynamic instance) => instance.series,
        r'history': (dynamic instance) => instance.history,
        r'castList': (dynamic instance) => instance.castList,
        r'cast': (dynamic instance) => instance.cast,
        r'data': (dynamic instance) => instance.data,
        r'resourceUri': (dynamic instance) => instance.resourceUri
      },
      {
        r'id=': (dynamic instance, value) => instance.id = value,
        r'name=': (dynamic instance, value) => instance.name = value,
        r'thumbnail=': (dynamic instance, value) => instance.thumbnail = value,
        r'description=': (dynamic instance, value) =>
            instance.description = value,
        r'thumbnailFormat=': (dynamic instance, value) =>
            instance.thumbnailFormat = value,
        r'comics=': (dynamic instance, value) => instance.comics = value,
        r'series=': (dynamic instance, value) => instance.series = value,
        r'history=': (dynamic instance, value) => instance.history = value,
        r'data=': (dynamic instance, value) => instance.data = value,
        r'resourceUri=': (dynamic instance, value) =>
            instance.resourceUri = value
      },
      null,
      [])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
