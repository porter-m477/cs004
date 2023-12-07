import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  //final ValueChanged<String> onValue;
  const ChatBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController(); //control sobre el input
    final focusNode = FocusNode(); //ayuda a mantener el enfoque en el elemento -inputBox

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
          
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus(); //cuando se hace click afuera se cierra teclado
      },
      focusNode: focusNode,
      controller: textController,//limpia el input enviado
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        
      },
    );
  }
}