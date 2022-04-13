import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import '../basic/basic_controller.dart';

part 'adapter_controller.g.dart';

class AdapterController<T> = _AdapterController<T> with _$AdapterController;

abstract class _AdapterController<T> extends BasicController<ObservableList<T>> with Store {
  @action
  void addAll(List<T> items) {
    if (item == null) item = ObservableList();
    item?.addAll(items);
  }

  @action
  void add(T item) {
    if (this.item == null) this.item = ObservableList();
    this.item?.add(item);
  }

  @action
  void remove(T item) {
    if (this.item == null) return;
    this.item?.remove(item);
  }

  @action
  void update(int position, T item) {
    if (this.item == null) this.item = ObservableList();
    this.item?[position] = item;
  }

  @action
  void replaceAll(List<T> list) {
    if (item == null) item = ObservableList();
    item = ObservableList.of(list);
  }

  int indexOf(T item) => this.item?.indexOf(item) ?? -1;

  @computed
  int get length => item?.length ?? 0;

  T operator [](int index) => item![index];

  void operator []=(int index, T item) {
    items[index] = item;
    refresh();
  }

  @action
  void refresh() {}

  @computed
  List<T> get items => item?.toList() ?? List.empty();

  @override
  @protected
  ObservableList<T>? get item => super.item;
}
