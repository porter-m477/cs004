import "package:app2/presentation/widgets/chat/message_bubble.dart";
import "package:app2/presentation/widgets/chat/reply_mesage_bubble.dart";
import "package:app2/presentation/widgets/shared/chat_box.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "../../../domain/entities/message.dart";
import "../../providers/chat_provider.dart";


class ChatScreen extends StatelessWidget {

   final String messageText;
  const ChatScreen({super.key, required this.messageText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://sm.ign.com/ign_nordic/cover/a/avatar-gen/avatar-generations_prsz.jpg'),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Nueva App de Chateo'),
        ),
        centerTitle: false,//siempre establecerlo
      ),
      body: MessageBubble(messageText: messageText),
    );
  }
}
class MessageBubble extends StatelessWidget {
  final String messageText;

  MessageBubble({required this.messageText});

  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal:  10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.message.length,
                itemBuilder: (context ,index) {
                  final message = chatProvider.message[index];

                  return ( message.desdeQuien == DesdeQuien.externo)
                  ? ReplyMessage()
                 : MessageBubble(messageText: message.text); 

              },)
            ),
            //Chatbox
            const ChatBox()
          ],
        ),
      ),
    );
  }
}
