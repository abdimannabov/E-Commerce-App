import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/widgets/home_appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Home App Bar here
                  SHomeAppBar(),

                  // Search Bar here

                  //Categories here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
