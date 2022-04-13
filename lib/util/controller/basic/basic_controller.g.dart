// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BasicController<T> on _BasicController<T>, Store {
  Computed<BasicState>? _$stateComputed;

  @override
  BasicState get state =>
      (_$stateComputed ??= Computed<BasicState>(() => super.state,
              name: '_BasicController.state'))
          .value;
  Computed<bool>? _$hasDataComputed;

  @override
  bool get hasData => (_$hasDataComputed ??=
          Computed<bool>(() => super.hasData, name: '_BasicController.hasData'))
      .value;
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_BasicController.hasError'))
          .value;
  Computed<T?>? _$currentItemComputed;

  @override
  T? get currentItem =>
      (_$currentItemComputed ??= Computed<T?>(() => super.currentItem,
              name: '_BasicController.currentItem'))
          .value;
  Computed<Response<dynamic>?>? _$currentErrorComputed;

  @override
  Response<dynamic>? get currentError => (_$currentErrorComputed ??=
          Computed<Response<dynamic>?>(() => super.currentError,
              name: '_BasicController.currentError'))
      .value;

  final _$itemAtom = Atom(name: '_BasicController.item');

  @override
  T? get item {
    _$itemAtom.reportRead();
    return super.item;
  }

  @override
  set item(T? value) {
    _$itemAtom.reportWrite(value, super.item, () {
      super.item = value;
    });
  }

  final _$errorAtom = Atom(name: '_BasicController.error');

  @override
  Response<String>? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(Response<String>? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$currentStateAtom = Atom(name: '_BasicController.currentState');

  @override
  BasicState get currentState {
    _$currentStateAtom.reportRead();
    return super.currentState;
  }

  @override
  set currentState(BasicState value) {
    _$currentStateAtom.reportWrite(value, super.currentState, () {
      super.currentState = value;
    });
  }

  final _$_BasicControllerActionController =
      ActionController(name: '_BasicController');

  @override
  void setError(Response<String>? response) {
    final _$actionInfo = _$_BasicControllerActionController.startAction(
        name: '_BasicController.setError');
    try {
      return super.setError(response);
    } finally {
      _$_BasicControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setItem(T? item) {
    final _$actionInfo = _$_BasicControllerActionController.startAction(
        name: '_BasicController.setItem');
    try {
      return super.setItem(item);
    } finally {
      _$_BasicControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setState(BasicState state) {
    final _$actionInfo = _$_BasicControllerActionController.startAction(
        name: '_BasicController.setState');
    try {
      return super.setState(state);
    } finally {
      _$_BasicControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void set(BasicState state, Response<dynamic>? hasError) {
    final _$actionInfo = _$_BasicControllerActionController.startAction(
        name: '_BasicController.set');
    try {
      return super.set(state, hasError);
    } finally {
      _$_BasicControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
item: ${item},
error: ${error},
currentState: ${currentState},
state: ${state},
hasData: ${hasData},
hasError: ${hasError},
currentItem: ${currentItem},
currentError: ${currentError}
    ''';
  }
}
