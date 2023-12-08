import 'package:flutter/material.dart';

const colorList = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.teal,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.deepPurple,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'selected Color must be greater than 0'),
        assert(selectedColor < colorList.length,
            'selected Color must be less than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
      );
}
