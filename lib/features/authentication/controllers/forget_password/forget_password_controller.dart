import 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app/features/authentication/screens/password_configs/reset_password.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/network_manager.dart';
import 'package:e_commerce_app/utils/popups/full_screen_loader.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  sendPasswordResetEmail() async {
    try {
      // start loading
      SFullScreenLoader.openLoadingDialog(
        "So'rov ustida ishlanmoqda...",
        SImages.loading,
      );

      // check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }

      // form validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        SFullScreenLoader.stopLoading();
        return;
      }

      // send email to reset password
      await AuthenticationRepository.instance.sendPasswordResetEmail(
        email.text.trim(),
      );

      SFullScreenLoader.stopLoading();

      // show succes screen
      SLoaders.successSnackBar(
        title: "Email yuborildi",
        message: "Parolni tiklash uchun email pochtangizga yuborildi!",
      );

      Get.to(() => ResetPassword(email: email.text.trim()));
    } catch (e) {
      SFullScreenLoader.stopLoading();
      SLoaders.errorSnackBar(title: "Xarolik", message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      // start loading
      SFullScreenLoader.openLoadingDialog(
        "So'rov ustida ishlanmoqda...",
        SImages.loading,
      );

      // check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }

      // send email to reset password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      SFullScreenLoader.stopLoading();

      // show succes screen
      SLoaders.successSnackBar(
        title: "Email yuborildi",
        message: "Parolni tiklash uchun email pochtangizga yuborildi!",
      );
    } catch (e) {
      SFullScreenLoader.stopLoading();
      SLoaders.errorSnackBar(title: "Xarolik", message: e.toString());
    }
  }
}
