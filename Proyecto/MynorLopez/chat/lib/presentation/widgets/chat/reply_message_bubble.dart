import 'package:flutter/material.dart';

class ReplyMessage extends StatelessWidget {
  const ReplyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Mensaje de regreso',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        // _ImageBubble(),
      ],
    );
  }
}

// class _ImageBubble extends StatelessWidget{

// }
