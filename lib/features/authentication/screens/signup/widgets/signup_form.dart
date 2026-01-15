import 'package:e_commerce_app/features/authentication/controllers/sign_up/signup_controller.dart';
import 'package:e_commerce_app/utils/validators/validations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'terms_and_conds.dart';

class SSignupForm extends StatelessWidget {
  const SSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
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
                    controller: controller.firstName,
                    validator: (value) =>
                        SValidator.validateEmptyText('First name', value),
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
                    controller: controller.lastName,
                    validator: (value) =>
                        SValidator.validateEmptyText('Last name', value),
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
              controller: controller.userName,
              validator: (value) =>
                  SValidator.validateEmptyText('Username', value),
              decoration: const InputDecoration(
                labelText: STexts.username,
                prefixIcon: Icon(Iconsax.user_add),
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwInputFields),

            // Email field
            TextFormField(
              controller: controller.email,
              validator: (value) => SValidator.validateEmail(value),
              decoration: const InputDecoration(
                labelText: STexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwInputFields),

            // Phone number
            TextFormField(
              controller: controller.phoneNumber,
              validator: (value) => SValidator.validatePhoneNumber(value),
              decoration: const InputDecoration(
                labelText: STexts.phoneNo,
                prefixIcon: Icon(Iconsax.mobile),
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwInputFields),

            // Password
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => SValidator.validatePassword(value),
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  labelText: STexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffix: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(
                      controller.hidePassword.value
                          ? Iconsax.eye
                          : Iconsax.eye_slash,
                    ),
                  ),
                ),
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
                onPressed: () => controller.signup(),
                child: const Text(STexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
