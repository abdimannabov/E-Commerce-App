import 'package:flutter/material.dart';

//Custom Text Theme for Light and Dark Modes
class STextTheme {
  STextTheme._(); // Private constructor

  static TextTheme lightTextTheme = TextTheme(
    //configs for light theme text styles
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 19,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),

    //configs for light theme title styles
    titleLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),

    //configs for light theme body styles
    bodyLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),

    //configs for light theme label styles
    labelLarge: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    //configs for dark theme text styles
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 19,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),

    //configs for dark theme title styles
    titleLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),

    //configs for dark theme body styles
    bodyLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),

    //configs for dark theme label styles
    labelLarge: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
  );
}
