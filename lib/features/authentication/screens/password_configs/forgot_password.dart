import 'package:e_commerce_app/features/authentication/screens/password_configs/reset_password.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/text_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
          children: [
            /// Heading
            // Place for my title
            Text(
              STexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: SSizes.spaceBtwItems),
            // And subtitle
            Text(
              STexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: SSizes.spaceBtwSections * 2),

            /// Text field
            TextField(
              decoration: InputDecoration(
                labelText: STexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwSections),

            /// Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: Text(STexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
