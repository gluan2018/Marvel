import 'package:flutter/material.dart';
import 'package:marvel/api/manager/api.dart';
import 'package:marvel/api/service/character_interface.dart';
import 'package:marvel/base/theme_app.dart';
import 'package:marvel/screen/list/character_list_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeApp(
      body: CharacterList(
        characterInterface: CharacterInterface.create(dio: API.currentDio),
      ),
    );
  }
}
