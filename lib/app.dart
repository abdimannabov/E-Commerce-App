import 'package:e_commerce_app/utils/constants/colors.dart';
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
      home: const Scaffold(
        backgroundColor: SColors.primary,
        body: Center(child: CircularProgressIndicator(color: SColors.white)),
      ),
    );
  }
}
