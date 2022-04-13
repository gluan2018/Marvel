// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adapter_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdapterController<T> on _AdapterController<T>, Store {
  Computed<int>? _$lengthComputed;

  @override
  int get length => (_$lengthComputed ??=
          Computed<int>(() => super.length, name: '_AdapterController.length'))
      .value;
  Computed<List<T>>? _$itemsComputed;

  @override
  List<T> get items => (_$itemsComputed ??= Computed<List<T>>(() => super.items,
          name: '_AdapterController.items'))
      .value;

  final _$_AdapterControllerActionController =
      ActionController(name: '_AdapterController');

  @override
  void addAll(List<T> items) {
    final _$actionInfo = _$_AdapterControllerActionController.startAction(
        name: '_AdapterController.addAll');
    try {
      return super.addAll(items);
    } finally {
      _$_AdapterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void add(T item) {
    final _$actionInfo = _$_AdapterControllerActionController.startAction(
        name: '_AdapterController.add');
    try {
      return super.add(item);
    } finally {
      _$_AdapterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(T item) {
    final _$actionInfo = _$_AdapterControllerActionController.startAction(
        name: '_AdapterController.remove');
    try {
      return super.remove(item);
    } finally {
      _$_AdapterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void update(int position, T item) {
    final _$actionInfo = _$_AdapterControllerActionController.startAction(
        name: '_AdapterController.update');
    try {
      return super.update(position, item);
    } finally {
      _$_AdapterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void replaceAll(List<T> list) {
    final _$actionInfo = _$_AdapterControllerActionController.startAction(
        name: '_AdapterController.replaceAll');
    try {
      return super.replaceAll(list);
    } finally {
      _$_AdapterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_AdapterControllerActionController.startAction(
        name: '_AdapterController.refresh');
    try {
      return super.refresh();
    } finally {
      _$_AdapterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
length: ${length},
items: ${items}
    ''';
  }
}
