import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controllers/onboarding/onboarding_controller.dart';
import 'widgets/next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';
import 'widgets/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: SImages.onBoardingImage1,
                title: STexts.onBoardingTitle1,
                subTitle: STexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage2,
                title: STexts.onBoardingTitle2,
                subTitle: STexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage3,
                title: STexts.onBoardingTitle3,
                subTitle: STexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          SmoothPageIndicatior(),

          // Circular button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
