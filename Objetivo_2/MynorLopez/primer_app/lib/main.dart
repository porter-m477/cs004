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
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Himno', icon: Icon(Icons.directions_car)),
                Tab(text: 'Simbolos', icon: Icon(Icons.directions_transit)),
                Tab(text: 'Departamentos', icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: const Text('GUATEMALA'),
            centerTitle: true,
          ),
          body: TabBarView(
            children: [
              ListView(
                padding: const EdgeInsets.all(8),
                children: const <Widget>[
                  Image(
                    image: NetworkImage(
                        'https://miblogchapin.files.wordpress.com/2009/08/alvarez51.jpg?w=300&h=291'),
                  ),
                  Image(
                    image: NetworkImage(
                        'https://miblogchapin.files.wordpress.com/2009/08/palma31.jpg?w=300&h=291'),
                  )
                ],
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 15,
                runSpacing: 15,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    padding: const EdgeInsets.all(8),
                    child: const Text('El quetzal'),
                  ),
                  Container(
                    color: Colors.red,
                    padding: const EdgeInsets.all(8),
                    child: const Text('La marimba'),
                  ),
                  Container(
                    color: Colors.red,
                    padding: const EdgeInsets.all(8),
                    child: const Text('La ceiba'),
                  ),
                  Container(
                    color: Colors.red,
                    padding: const EdgeInsets.all(8),
                    child: const Text('La monja blanca'),
                  ),
                  Container(
                    color: Colors.red,
                    padding: const EdgeInsets.all(8),
                    child: const Text('Tecun Human'),
                  ),
                ],
              ),
              GridView.count(
                padding: const EdgeInsets.all(10),
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.teal[200],
                    child: const Text('Guatemala'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.teal[400],
                    child: const Text('Sacatepequez'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.teal[500],
                    child: const Text('Jalapa'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.teal[100],
                    child: const Text('Zacapa'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.teal[300],
                    child: const Text('San Marcos'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.teal[300],
                    child: const Text('Izabal'),
                  ),
                ],
              ),
            ],
          )),
    ));
  }
}
