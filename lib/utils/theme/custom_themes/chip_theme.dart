import 'package:flutter/material.dart';

class SChipTheme {
  SChipTheme._(); //to avoid creating instance of this class

  //custom light chip theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
    checkmarkColor: Colors.white,
  );

  //custom dark chip theme
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
    checkmarkColor: Colors.white,
  );
}
