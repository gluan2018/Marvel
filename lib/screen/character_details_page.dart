
import 'package:flutter/material.dart';

import '../api/model/character.dart';

class CharacterDetailsPage extends StatelessWidget {
  final Character character;

  const CharacterDetailsPage({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_left),
        ),
        elevation: 0,
        title: const Text('Detalhes do personagem'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                child: Image.network(
                  '${character.thumbnail}.${character.thumbnailFormat}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              character.name,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              character.description,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text('Comics'),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 75,
                    height: 100,
                    child: Image.network(''),
                  );
                },
              ),
            ),
            Text('Series'),
            // ListView.builder(
            //   itemCount: 10,
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (context, index) {
            //     return SizedBox(
            //       width: 75,
            //       height: 100,
            //       child: Image.network(''),
            //     );
            //   },
            // ),
            // Text('Histórias'),
            // ListView.builder(
            //   itemCount: 10,
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (context, index) {
            //     return SizedBox(
            //       width: 75,
            //       height: 100,
            //       child: Image.network(''),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
