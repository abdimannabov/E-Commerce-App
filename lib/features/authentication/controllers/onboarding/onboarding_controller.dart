import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when Page scrolled
  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  /// Jump to the specific dot selected page
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Update current index and jump to next page
  void nextPage() {
    // If we're already on the last page or beyond, navigate to login.
    if (currentPageIndex.value >= 2) {
      // Schedule navigation after the current frame to avoid layout/navigation race
      // conditions that can produce RenderBox layout errors.
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // Use addPostFrameCallback to avoid navigating during a build/layout pass.
        if (Get.isRegistered<OnBoardingController>()) {
          Get.offAll(const LoginScreen());
        } else {
          Get.offAll(const LoginScreen());
        }
      });
      return;
    }

    final int next = currentPageIndex.value + 1;
    // Only try jumping if the controller is attached to a PageView.
    if (pageController.hasClients) {
      final int safeIndex = next.clamp(0, 2);
      try {
        pageController.jumpToPage(safeIndex);
      } catch (_) {
        // If jumpToPage throws (rare), fallback to animateToPage.
        pageController.animateToPage(
          safeIndex,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    } else {
      // If no clients are attached yet, schedule the page change on the next frame.
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (pageController.hasClients) {
          pageController.animateToPage(
            next.clamp(0, 2),
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      });
    }
  }

  /// Update current index and jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
