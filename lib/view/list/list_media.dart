import 'package:flutter/material.dart';
import 'package:marvel/api/model/media/media.dart';
import 'package:marvel/api/service/character_interface.dart';
import 'package:marvel/view/card/card_media.dart';

class ListMedia extends StatelessWidget {
  const ListMedia({
    Key? key,
    required this.item,
    required this.title,
    required this.height,
    required this.characterInterface,
  }) : super(key: key);

  final List<Media> item;
  final double height;
  final String title;
  final CharacterInterface characterInterface;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: height,
          child: ListView.builder(
            itemCount: item.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final url = item[index].resourceUri;
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: AspectRatio(
                  aspectRatio: 3 / 4,
                  child: CardMedia(
                    details: characterInterface.media(url),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
