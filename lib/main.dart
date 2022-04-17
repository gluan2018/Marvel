import 'package:flutter/material.dart';
import 'package:marvel/api/manager/api.dart';
import 'package:marvel/base/app_page.dart';
import 'package:marvel/main.reflectable.dart';

void main() async {
  await API.loadAPI();
  initializeReflectable();

  runApp(const App());
}
