// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:proyecto_nery/presentation/widgets/chat/message_bubble.dart';
import 'package:proyecto_nery/presentation/widgets/chat/reply_mesage_bubble.dart';
import 'package:proyecto_nery/presentation/widgets/shared/chat_box.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> messages = [];

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
          child: Text('Proyecto Chat App Nery'),
        ),
        centerTitle: false,
      ),
      body: _ChatView(
        messages: messages,
        onSendMessage: (message) {
          setState(() {
            messages.add(message);
          });
        },
      ),
    );
  }
}

class _ChatView extends StatelessWidget {
  final List<String> messages;
  final ValueChanged<String> onSendMessage;

  const _ChatView({Key? key, required this.messages, required this.onSendMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return MessageBubble(message: messages[index]);
                },
              ),
            ),
            // Chatbox
            ChatBox(
              onSendMessage: onSendMessage,
            ),
          ],
        ),
      ),
    );
  }
}




// class ChatScreen extends StatelessWidget {
//   const ChatScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: const Padding(
//           padding: EdgeInsets.all(3.0),
//           child: CircleAvatar(
//             backgroundImage: NetworkImage('https://sm.ign.com/ign_nordic/cover/a/avatar-gen/avatar-generations_prsz.jpg'),
//           ),
//         ),
//         title: const Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Text('Nueva App de Chateo'),
//         ),
//         centerTitle: false,//siempre establecerlo
//       ),
//       body: _ChatView(),
//     );
//   }
// }

// class _ChatView extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.symmetric( horizontal:  10),
//         child: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 itemCount: 50,
//                 itemBuilder: (context ,index) {
//                 return ( index % 2 == 0 ) //funcion para alternar los mensajes
//                   ? const ReplyMessage()
//                   :const MessageBubble();
//               },)
//             ),
//             //Chatbox
//             const ChatBox()
//           ],
//         ),
//       ),
//     );
//   }
// }
