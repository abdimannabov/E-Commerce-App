import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'terms_and_conds.dart';

class SSignupForm extends StatelessWidget {
  const SSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: SSizes.spaceBtwSections),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First & last name
            Row(
              children: [
                // First name here
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: STexts.firstName,
                      prefixIcon: Icon(Iconsax.profile_circle),
                    ),
                  ),
                ),

                const SizedBox(width: SSizes.sm),

                // Last name here
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: STexts.lastName,
                      prefixIcon: Icon(Iconsax.profile_circle),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: SSizes.spaceBtwInputFields),

            // Username
            TextFormField(
              decoration: const InputDecoration(
                labelText: STexts.username,
                prefixIcon: Icon(Iconsax.user_add),
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwInputFields),

            // Email field
            TextFormField(
              decoration: const InputDecoration(
                labelText: STexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwInputFields),

            // Phone number
            TextFormField(
              decoration: const InputDecoration(
                labelText: STexts.phoneNo,
                prefixIcon: Icon(Iconsax.mobile),
                suffix: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwInputFields),

            // Password
            TextFormField(
              decoration: const InputDecoration(
                labelText: STexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffix: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwInputFields / 2),

            // Terms & conditions agreement
            const STermsAndConditionsCheckbox(),
            const SizedBox(width: SSizes.spaceBtwSections),

            // create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(STexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
