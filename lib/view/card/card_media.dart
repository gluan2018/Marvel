import 'package:flutter/material.dart';
import 'package:marvel/api/model/media/media_details.dart';

class CardMedia extends StatelessWidget {
  final Future<MediaDetails> details;

  const CardMedia({
    Key? key,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
      ),
      child: FutureBuilder<MediaDetails>(
        future: details,
        builder: (BuildContext context, AsyncSnapshot<MediaDetails> snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }

          final character = snapshot.data;
          if (character == null) {
            return const Icon(Icons.image);
          }

          return Image.network(
            '${character.thumbnail?.replaceAll('http', 'https') ?? ''}.${character.thumbnailFormat ?? ''}',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
