import 'package:flutter/material.dart';
import 'package:chat/config/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:chat/presentation/screens/chat/chat_screen.dart';
import 'package:chat/presentation/providers/chat_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        title: 'Mis mensajes',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().theme(),
        home: const ChatScreen(),
      ),
    );
  }
}
