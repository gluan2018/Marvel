import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marvel/api/manager/api.dart';
import 'package:marvel/api/service/character_interface.dart';
import 'package:marvel/main.reflectable.dart';
import 'package:marvel/screen/list/character_list_page.dart';
import 'package:marvel/util/color.dart';

void main() async {
  await API.loadAPI();
  initializeReflectable();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Marvel',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: darkColorScheme.background,
            systemNavigationBarColor: darkColorScheme.background,
          ),
        ),
        colorScheme: darkColorScheme,
        scaffoldBackgroundColor: darkColorScheme.background,
      ),
      debugShowCheckedModeBanner: false,
      home: CharacterList(
        characterInterface: CharacterInterface.create(dio: API.currentDio),
      ),
    );
  }
}
//
// class Test extends CharacterInterface {
//   @override
//   Future<ListDataResponse<Character>> all(int limit, int offset) async {
//     await Future.delayed(const Duration(seconds: 3));
//     if (offset == 3) {
//       return DataTestResponse(list: []);
//     }
//
//     return DataTestResponse(list: [
//       Character.fromJson({}),
//       Character.fromJson({}),
//       Character.fromJson({}),
//       Character.fromJson({}),
//       Character.fromJson({}),
//       Character.fromJson({}),
//       Character.fromJson({}),
//       Character.fromJson({}),
//       Character.fromJson({}),
//       Character.fromJson({}),
//       Character.fromJson({}),
//     ]);
//   }
//
//   @override
//   Future<DataResponse<Character>> findCharacter(int id) {
//     // TODO: implement findCharacter
//     throw UnimplementedError();
//   }
// }
//
// class DataTestResponse<T extends BaseModel> extends ListDataResponse<T> {
//   DataTestResponse({
//     required this.list,
//   }) : super(null);
//
//   final List<T> list;
//
//   @override
//   List<T> get data => list;
//
//   @override
//   bool get isSuccessful => true;
// }
