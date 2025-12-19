import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'features/authentication/screens/onboarding/onboarding.dart';
import 'utils/theme/theme.dart';

/// ------Root dart file for the themes------
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
