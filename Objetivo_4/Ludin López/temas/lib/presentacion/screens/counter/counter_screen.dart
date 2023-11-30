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
    return Theme(
      // Define un ThemeData personalizado para este screen
      data: ThemeData(
        primaryColor: Colors.teal, // Color principal (AppBar, botones, etc.)
        hintColor: Colors.orange, // Color de acento (por ejemplo, el color del FloatingActionButton)
        scaffoldBackgroundColor: Colors.white, // Color de fondo del Scaffold
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.teal, fontSize: 24), // Estilo del texto del AppBar
          bodyText2: TextStyle(color: Colors.teal, fontSize: 18), // Estilo del texto del cuerpo
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Otro Tema'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contenido con tema diferente',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Acción al hacer clic en el botón
                },
                child: Text('Botón con Tema Diferente'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
