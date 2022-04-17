
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel/api/manager/api.dart';
import 'package:marvel/api/model/character.dart';
import 'package:marvel/api/service/character_interface.dart';
import 'package:marvel/main.reflectable.dart';

// ignore_for_file: avoid_print

void main() {
  late CharacterInterface interface;

  setUp(() async {
    await API.loadAPI();
    initializeReflectable();
    interface = CharacterInterface.create(dio: API.currentDio);
  });

  late Character characterSearch;
  test('Busca personagens', () async {
    final dataResponse = await interface.all(10, 1);

    print('Requisição completa');
    expect(dataResponse.isSuccessful, true, reason: 'Não veio uma resposta de sucesso da API');
    final character = dataResponse.data.castList<Character>();

    print('Cast completo');
    expect(character.length, 10, reason: 'A paginação está vindo menos que 10 elementos');

    print('Personagens encontrados');
    print('Definindo ID para proximo teste');
    characterSearch = character[0];
  });

  test('Busca de comics', () async {
    final dataResponse = await interface.media(characterSearch.comics[0].resourceUri);

    print('Requisição completa');
    expect(dataResponse.thumbnail != null, true, reason: 'Thumbnail não encontrada');
    print('Comic encontrada ');
  });
  
}