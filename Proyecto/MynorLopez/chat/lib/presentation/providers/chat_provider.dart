import 'package:flutter/material.dart';
import '../../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(
      text: 'Primer mensaje',
      desdeQuien: DesdeQuien.yo,
    ),
    Message(text: 'Segundo mensaje', desdeQuien: DesdeQuien.yo)
  ];

  Future<void> sendMessage(String text) async {
    final nuevoMensaje = Message(text: text, desdeQuien: DesdeQuien.yo);
    messageList.add(nuevoMensaje);

    notifyListeners();
  }
}
