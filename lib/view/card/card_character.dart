import 'package:flutter/material.dart';
import 'package:marvel/api/model/character.dart';
import 'package:marvel/util/asset_manager.dart';

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
      padding: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  '${character.thumbnail}.${character.thumbnailFormat}',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32.0),
              child: Text(
                character.name,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: AssetManager.comic.iconImage,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Comics: ${character.comics.length}',
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 16),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: AssetManager.series.iconImage,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Series: ${character.series.length}',
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 16),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: AssetManager.history.iconImage,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Stories: ${character.comics.length}',
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 16),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
