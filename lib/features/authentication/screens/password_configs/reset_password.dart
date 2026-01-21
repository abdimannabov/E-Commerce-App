import 'package:e_commerce_app/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => Get.back(), icon: Icon(Icons.clear)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
          children: [
            // Image
            Image(
              image: AssetImage(SImages.verifyEmailImage),
              width: SHelperFunctions.screenWidth() * 0.6,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: SSizes.spaceBtwSections),

            // Title and Subtitle
            Text(
              STexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: SSizes.spaceBtwItems),
            Text(
              STexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: SSizes.spaceBtwSections),

            // Confirm
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => const LoginScreen()),
                child: Text(STexts.continueButton),
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwItems),
            // Resend email
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () => ForgetPasswordController.instance
                    .resendPasswordResetEmail(email),
                child: Text(STexts.resendEmail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
