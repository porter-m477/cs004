import 'app1/presentacion/screens/counter/counter_screen.dart';
//import 'package:app1/presentacion/screens/Screen_Nery/Screen_Nery.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),
      home:const CounterScreen()
      home: const Screen2()
      );
  }
}