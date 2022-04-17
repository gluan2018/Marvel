// ignore_for_file: avoid_print

import 'package:flutter_test/flutter_test.dart';
import 'package:marvel/api/model/character.dart';
import 'package:marvel/api/service/character_interface.dart';
import 'package:marvel/base/theme_app.dart';
import 'package:marvel/main.reflectable.dart';
import 'package:marvel/screen/details/character_details_page.dart';
import 'package:marvel/view/list/list_media.dart';
import 'package:marvel/view/list/list_name.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../util/character_interface_impl.dart';
import '../../util/json/data_json.dart';

void main() {
  final CharacterInterface interface = CharacterInterfaceImpl();

  setUp(() async {
    initializeReflectable();
  });

  testWidgets('Verificando detalhes', (tester) async {
    mockNetworkImagesFor(() async {
      final character = Character.fromJson(characterJson());
      await tester.pumpWidget(ThemeApp(
        body: CharacterDetailsPage(
          characterInterface: interface,
          character: character,
        ),
      ));

      await tester.pumpAndSettle(const Duration(seconds: 2));

      expect(find.text(character.name), findsOneWidget, reason: 'O campo com o nome do personagem não existe');
      print('Campo de nome com os valores corretos');
      expect(find.text(character.description), findsOneWidget, reason: 'O campo com a descrição do personagem não existe');
      print('Campo de descrição com os valores corretos');
      expect(find.byType(ListMedia), findsOneWidget, reason: 'Lista de comics não encontrada');
      print('Lista comics encontrada');
      expect(find.byType(ListName), findsWidgets, reason: 'Lista de séries e/ou histórias não encontrada');
      print('Lista de series e histórias encontradas');

      print('Detalhes funcionando');
    });
  });
}
