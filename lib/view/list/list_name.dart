import 'package:flutter/material.dart';
import 'package:marvel/api/model/media/media.dart';

class ListName extends StatelessWidget {
  const ListName({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  final List<Media> items;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        Text(
          _make(),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 18),
        )
      ],
    );
  }

  String _make() {
    StringBuffer buffer = StringBuffer();

    for (var element in items) {
      buffer.write('• ${element.name}\n');
    }

    return buffer.toString();
  }
}
