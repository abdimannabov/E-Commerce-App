import 'package:e_commerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                STexts.signupTitle,
                style: Theme.of(context).textTheme.titleLarge,
              ),

              /// Form
              SSignupForm(),

              const SizedBox(height: SSizes.spaceBtwSections / 2),

              /// Divider
              SFormDivider(dividerText: STexts.orSignUpWith),
              const SizedBox(height: SSizes.spaceBtwSections / 2),

              /// Or other methods
              SSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
