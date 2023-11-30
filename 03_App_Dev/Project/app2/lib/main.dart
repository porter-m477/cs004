import 'package:app2/config/theme/app_theme.dart';
import 'package:app2/presentation/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(),
      home: const ChatScreen(),
    );
  }
}

