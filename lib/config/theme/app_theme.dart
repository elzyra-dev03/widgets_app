import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.lightGreen,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.deepOrange,
  Colors.pink,
  Colors.cyan,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'SelectedColor must be greater than 0'),
        assert(selectedColor <= colorList.length,
            'SelectedColor must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() =>
      ThemeData(useMaterial3: true, colorSchemeSeed: colorList[selectedColor]);
}
