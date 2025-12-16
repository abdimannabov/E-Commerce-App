import 'package:flutter/material.dart';
import 'utils/theme/theme.dart';

/// ------Root dart file for the themes------
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
    );
  }
}