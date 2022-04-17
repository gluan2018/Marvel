import 'package:flutter/material.dart';
import 'package:marvel/util/asset_manager.dart';

class MessageError extends StatelessWidget {
  const MessageError({
    required this.message,
    this.callback,
  }) : super();

  final String message;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 256,
          width: 256,
          child: AssetManager.error.iconImage,
        ),
        const SizedBox(height: 32),
        Text(
          message,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(height: 32),
        MaterialButton(
          height: 56,
          onPressed: callback,
          child: Text(
            'Tentar novamente',
            style: Theme.of(context).textTheme.button?.copyWith(fontSize: 16),
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
