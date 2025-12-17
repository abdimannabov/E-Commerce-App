import 'package:e_commerce_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/text_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/textfield_theme.dart';
import 'package:flutter/material.dart';

class SAppTheme {
  SAppTheme._(); //Private constructor

  //configure light and dark themes
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    useMaterial3: true,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: STextTheme.lightTextTheme,
    appBarTheme: SAppBarTheme.lightAppBarTheme,
    checkboxTheme: SCheckboxTheme.lightCheckboxTheme,
    elevatedButtonTheme: SElevatedButtonTheme.lightElevatedButtonTheme,
    bottomSheetTheme: SBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: STextFieldTheme.lightInputDecorationTheme,
    chipTheme: SChipTheme.lightChipTheme,
  );
  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    useMaterial3: true,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: STextTheme.darkTextTheme,
    appBarTheme: SAppBarTheme.darkAppBarTheme,
    checkboxTheme: SCheckboxTheme.darkCheckboxTheme,
    elevatedButtonTheme: SElevatedButtonTheme.darkElevatedButtonTheme,
    bottomSheetTheme: SBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: STextFieldTheme.darkInputDecorationTheme,
    chipTheme: SChipTheme.darkChipTheme,
  );
}
