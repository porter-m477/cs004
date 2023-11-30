import "package:app2/presentation/widgets/chat/message_bubble.dart";
import "package:app2/presentation/widgets/chat/reply_mesage_bubble.dart";
import "package:app2/presentation/widgets/shared/chat_box.dart";
import "package:flutter/material.dart";

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal:  10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context ,index) {
                return ( index % 2 == 0 ) //funcion para alternar los mensajes
                  ? const ReplyMessage()
                  :const MessageBubble();
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
