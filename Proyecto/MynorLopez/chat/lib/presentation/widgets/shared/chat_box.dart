import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  final ValueChanged<String> valorTexto;

  const ChatBox({super.key, required this.valorTexto});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(25));

    final inputDecoration = InputDecoration(
      hintText: 'Ingresa tu mensaje aqui...',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final mensajeValue = textController.value.text;
          valorTexto(mensajeValue);
          textController.clear();
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
        valorTexto(value);
        textController.clear();
      },
    );
  }
}
