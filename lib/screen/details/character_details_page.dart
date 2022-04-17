import 'package:flutter/material.dart';
import 'package:marvel/api/model/character.dart';
import 'package:marvel/api/service/character_interface.dart';
import 'package:marvel/view/list/list_media.dart';

import '../../view/list/list_name.dart';

class CharacterDetailsPage extends StatelessWidget {
  final Character character;
  final CharacterInterface characterInterface;

  const CharacterDetailsPage({
    Key? key,
    required this.character,
    required this.characterInterface,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                child: Image.network(
                  '${character.thumbnail}.${character.thumbnailFormat}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      character.name,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    character.description,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 18),
                  ),
                  const SizedBox(height: 24),
                  ListMedia(
                    item: character.comics,
                    characterInterface: characterInterface,
                    title: 'Comics',
                    height: 200,
                  ),
                  ListName(title: 'Series', items: character.series),
                  ListName(title: 'Histórias', items: character.history),
                  const SizedBox(height: 50,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
