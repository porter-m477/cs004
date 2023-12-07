import 'package:flutter/material.dart';

import '../../domain/entities/message.dart';



class ChatProvider extends ChangeNotifier{

  List<Message> message = [
    Message (
      text:'Pariatur ea fugiat ipsum',
      desdeQuien: DesdeQuien.yo
      ),
    Message (
    text:'Duis sit dolor culpa aute',
    desdeQuien: DesdeQuien.yo
    ),
  ];

  Future<void> sendMessage( String text) async {
    //palceholder de la funcion
  }

}