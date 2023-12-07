import 'package:flutter/material.dart';
import 'package:chat/domain/entities/message.dart';

class MessageBubble extends StatelessWidget {
  final Message mensaje;

  const MessageBubble({super.key, required this.mensaje});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 10),
            child: Text(
              mensaje.text,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
