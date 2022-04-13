import 'package:flutter/material.dart';

class MessageError extends StatelessWidget {
  const MessageError({
    required this.messsage,
    this.callback,
  }) : super();

  final String messsage;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
