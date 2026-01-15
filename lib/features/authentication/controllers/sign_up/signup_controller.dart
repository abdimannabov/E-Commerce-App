import 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/features/personalization/models/user_model.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/network_manager.dart';
import 'package:e_commerce_app/utils/popups/full_screen_loader.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/repositories/user/user_repo.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Vars
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController(); // Some controllers for specific fields
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); // Form key for validation

  // Sign up here
  void signup() async {
    try {
      // Start loading
      SFullScreenLoader.openLoadingDialog(
        "Ma'lumotlaringiz ko'rib chiqilmoqda...",
        SImages.loading,
      );

      // Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }

      // Form validation
      if (!signupFormKey.currentState!.validate()) {
        SFullScreenLoader.stopLoading();
        return;
      }

      // Privacy Policy validation
      if (!privacyPolicy.value) {
        SLoaders.warningSnackBar(
          title: "Maxfiylik siyosati va foydalanish shartlari",
          message:
              "Iltimos, hisob yaratmoqchi bo'lsangiz maxfiylik siyosati va foydalanish shartlarini qabul qiling!",
        );
        return;
      }

      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
            email.text.trim(),
            password.text.trim(),
          );

      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      SFullScreenLoader.stopLoading();

      SLoaders.successSnackBar(
        title: "Ajoyib",
        message: "Hisobingiz yaratildi. Tasdiqlash uchun emailga o'ting.",
      );

      Get.to(() => const VerifyEmailScreen());
    } catch (e) {
      SFullScreenLoader.stopLoading();
      SLoaders.errorSnackBar(title: "Xatolik!", message: e.toString());
    }
  }
}
