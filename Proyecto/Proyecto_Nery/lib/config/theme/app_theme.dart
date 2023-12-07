// ignore: unused_import
import 'package:flutter/material.dart';

const Color _customColor = Color( 0xFF5C11D4 );

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.orange,
  Colors.pink
];

class AppTheme{

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[3],
      brightness: Brightness.dark //Dark mode
    );
  }
}
