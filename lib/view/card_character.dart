import 'package:flutter/material.dart';
import 'package:marvel/api/model/character.dart';

class CardCharacter extends StatelessWidget {
  const CardCharacter({
    Key? key,
    required this.character,
    this.callback,
  }) : super(key: key);

  final Character character;
  final GestureTapCallback? callback;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: callback,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: CircleAvatar(
                radius: 20,
                child: Image.network(''),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Column(
                children: [
                  Text('Nome: ' + (character.name ?? '')),
                  Text('Comics: ${character.comics?.length ?? 0}, Séries: ${character.series?.length ?? 0}'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
