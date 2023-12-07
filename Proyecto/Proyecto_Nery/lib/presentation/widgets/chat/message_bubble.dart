import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;

  const MessageBubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}



// class MessageBubble extends StatelessWidget {
//   const MessageBubble({super.key, required String message});

//   @override
//   Widget build(BuildContext context) {

//     final colors = Theme.of(context).colorScheme;

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         Container(
//             decoration: BoxDecoration(
//             color: colors.primary,
//             borderRadius: BorderRadius.circular(20)
//           ),
//           child: const Padding(
//             padding: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
//             child: Text('Ea velit non proident culpa .', 
//             style: TextStyle( color: Colors.black),),
//           ),
//         ),
//         const SizedBox(height: 10,)
//       ],

//     );
//   }
// }

