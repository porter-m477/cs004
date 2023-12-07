import 'package:chat/presentation/widgets/chat/message_bubble.dart';
import 'package:chat/presentation/widgets/chat/reply_message_bubble.dart';
import 'package:chat/presentation/widgets/shared/chat_box.dart';
import 'package:flutter/material.dart';
import 'package:chat/domain/entities/message.dart';
import 'package:chat/presentation/providers/chat_provider.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://sm.ign.com/ign_nordic/cover/a/avatar-gen/avatar-generations_prsz.jpg'),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('App Chats'),
        ),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];

                  return (message.desdeQuien == DesdeQuien.externo)
                      ? ReplyMessage()
                      : MessageBubble(mensaje: message);
                },
              ),
            ),
            ChatBox(
              valorTexto: (value) => chatProvider.sendMessage(value),
            )
          ],
        ),
      ),
    );
  }
}
