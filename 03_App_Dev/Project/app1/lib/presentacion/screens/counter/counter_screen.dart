import "package:flutter/material.dart";



class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Texto1'),
      ) ,
        body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(fontSize: 100, fontWeight: FontWeight.bold),),
            const Text('Clicks!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
          ],)
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
                    clickCounter++;// Add your onPressed code here!
                    setState(() {
                    });
                  },
        child: const Icon(Icons.plus_one),
        ),
      );
  }
}
