import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

import '../basic_state.dart';

part 'basic_controller.g.dart';

class BasicController<T> = _BasicController<T> with _$BasicController;

abstract class _BasicController<T> with Store {
  @observable
  T? item;

  @observable
  Response<String>? error;

  @observable
  BasicState currentState = BasicState.none;

  @action
  void setError(Response<String>? response) => error = response;

  @action
  void setItem(T? item) {
    this.item = item;
    currentState = BasicState.done;
  }

  @action
  void setState(BasicState state) => currentState = state;

  @action
  void set(BasicState state, Response? hasError) {
    currentState = state;
    error = null;
  }

  @computed
  BasicState get state => currentState;

  @computed
  bool get hasData => item != null;

  @computed
  bool get hasError => error != null;

  @computed
  T? get currentItem => item;

  @computed
  Response? get currentError => error;
}
