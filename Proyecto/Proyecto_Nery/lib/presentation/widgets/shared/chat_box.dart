import 'package:flutter/material.dart';

// lib/widgets/shared/chat_box.dart

class ChatBox extends StatelessWidget {
  final ValueChanged<String> onSendMessage;

  const ChatBox({Key? key, required this.onSendMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
      hintText: 'Entre su mensaje aqui..',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final message = textController.text.trim(); // Obtener el texto ingresado
          if (message.isNotEmpty) {
            onSendMessage(message);
            textController.clear();
          }
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        final message = value.trim();
        if (message.isNotEmpty) {
          onSendMessage(message);
          textController.clear();
        }
      },
    );
  }
}


//Modif. 1

// class ChatBox extends StatelessWidget {
//   final ValueChanged<String> onSendMessage;

//   const ChatBox({Key? key, required this.onSendMessage}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final textController = TextEditingController();
//     final focusNode = FocusNode();

//     final outlineInputBorder = UnderlineInputBorder(
//         borderSide: const BorderSide(color: Colors.transparent),
//         borderRadius: BorderRadius.circular(40));

//     final inputDecoration = InputDecoration(
//       hintText: 'Entre su mensaje aqui..',
//       enabledBorder: outlineInputBorder,
//       focusedBorder: outlineInputBorder,
//       filled: true,
//       suffixIcon: IconButton(
//         icon: const Icon(Icons.send_outlined),
//         onPressed: () {
//           onSendMessage(textController.text); // Corregir aquí
//           textController.clear();
//         },
//       ),
//     );

//     return TextFormField(
//       onTapOutside: (event) {
//         focusNode.unfocus();
//       },
//       focusNode: focusNode,
//       controller: textController,
//       decoration: inputDecoration,
//       onFieldSubmitted: (value) {
//         onSendMessage(value);
//         textController.clear();
//       },
//     );
//   }
// }



//Original

// class ChatBox extends StatelessWidget {
//   //final ValueChanged<String> onValue;
//   const ChatBox({super.key, required ValueChanged<String> onSendMessage});

//   @override
//   Widget build(BuildContext context) {
//     final textController = TextEditingController(); //control sobre el input
//     final focusNode = FocusNode(); //ayuda a mantener el enfoque en el elemento -inputBox

//     final outlineInputBorder = UnderlineInputBorder(
//         borderSide: const BorderSide(color: Colors.transparent),
//         borderRadius: BorderRadius.circular(40));

//     final inputDecoration = InputDecoration(
//       hintText: 'Entre su mensaje aqui..',
//       enabledBorder: outlineInputBorder,
//       focusedBorder: outlineInputBorder,
//       filled: true,
//       suffixIcon: IconButton(
//         icon: const Icon(Icons.send_outlined),
//         onPressed: () {
          
//         },
//       ),
//     );

//     return TextFormField(
//       onTapOutside: (event) {
//         focusNode.unfocus(); //cuando se hace click afuera se cierra teclado
//       },
//       focusNode: focusNode,
//       controller: textController,//limpia el input enviado
//       decoration: inputDecoration,
//       onFieldSubmitted: (value) {
        
//       },
//     );
//   }
// }