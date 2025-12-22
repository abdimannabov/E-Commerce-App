import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => Get.back(), icon: Icon(Icons.clear))
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
                onPressed: () {},
                child: Text(STexts.continueButton),
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwItems),
            // Resend email
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: Text(STexts.resendEmail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
