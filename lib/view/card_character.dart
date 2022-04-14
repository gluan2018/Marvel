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
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: AspectRatio(
        aspectRatio: 21 / 9,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                '${character.thumbnail}.${character.thumbnailFormat}',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: <Color>[Color(0xdd000000), Color(0x77000000)],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                character.name,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: callback,
              ),
            )
          ],
        ),
      ),
    );
  }
}
