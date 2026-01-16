import 'dart:async';
import 'package:e_commerce_app/common/widgets/success/success_screen.dart';
import 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  // Send email when verify screen appears & set timer for it
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoDirect();
    super.onInit();
  }

  // Send email verification link
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      SLoaders.successSnackBar(
        title: "Email yuborildi",
        message: "Iltimos, gmail pochtangizni tekshiring!",
      );
    } catch (e) {
      SLoaders.errorSnackBar(title: "Xatolik!", message: e.toString());
    }
  }

  // Timer to automatically redirect on email verification
  setTimerForAutoDirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(
          () => SuccessScreen(
            image: SImages.successEmailImage,
            title: STexts.yourAccountCreatedTitle,
            subTitle: STexts.yourAccountCreatedSubTitle,
            onPressed: () => AuthenticationRepository.instance.screenRedirect(),
          ),
        );
      }
    });
  }

  // Manually check if email verified
  checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(
        () => SuccessScreen(
          image: SImages.successEmailImage,
          title: STexts.yourAccountCreatedTitle,
          subTitle: STexts.yourAccountCreatedSubTitle,
          onPressed: () => AuthenticationRepository.instance.screenRedirect(),
        ),
      );
    }
  }
}
