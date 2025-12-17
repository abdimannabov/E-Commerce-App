import 'package:get/get.dart';

class OnBoarding extends GetxController {
  static OnBoarding get instance => Get.find();

  /// Variables

  /// Update Current Index when Page scrolled
  void updatePageIndicator(int index) {
    // Your logic to update the current index
  }

  /// Jump to the specific dot selected page
  void dotNavigation(int index) {
    // Your logic to navigate to the selected page
  }

  /// Update current index and jump to next page
  void nextPage() {
    // Your logic to go to the next page
  }

  /// Update current index and jump to last page
  void skipPage() {
    // Your logic to go to the last page
  }
}
