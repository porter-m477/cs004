import 'package:flutter/material.dart';
 
 class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Stack(
          children: <Widget> [
            Image(
              image: NetworkImage(
                'https://learn.g2.com/hubfs/What_is_Information_Technology.jpg'),
              ),
              Positioned(
                bottom: 25,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/img/galileo2.jpg'),
                ),
                )
          ],
        ),
            SizedBox(height: 80),
            ListTile(
              title: Center(child: Text('Nombre')),
              subtitle: Center(child: Text('Axehel Daniel')),
            ),
             ListTile(
              title: Center(child: Text('Apellido')),
              subtitle: Center(child: Text('Mayor López')),
            ),
             ListTile(
              title: Center(child: Text('Universidad Galileo')),
              subtitle: Center(child: Text('Programación IV')),
            )
      ],
    );
  }
}