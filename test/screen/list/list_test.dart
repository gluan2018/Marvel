import 'package:flutter_test/flutter_test.dart';
import 'package:marvel/api/service/character_interface.dart';
import 'package:marvel/base/theme_app.dart';
import 'package:marvel/main.reflectable.dart';
import 'package:marvel/screen/list/character_list_page.dart';
import 'package:marvel/view/card/card_character.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../util/character_interface_impl.dart';

// ignore_for_file: avoid_print

void main() {
  final CharacterInterface interface = CharacterInterfaceImpl();

  setUp(() async {
    initializeReflectable();
  });

  testWidgets('Verificando listagem', (tester) async {
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(ThemeApp(
        body: CharacterList(
          characterInterface: interface,
        ),
      ));

      await tester.pumpAndSettle(const Duration(seconds: 2));

      expect(find.byType(CardCharacter), findsWidgets, reason: 'Card não encontrado');
      print('Card encontrado');

      print('Listagem funcionando');
    });
  });
}
