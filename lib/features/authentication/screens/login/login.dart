import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo & Title & Subtitle
              const SLoginHeader(),

              // Form to login
              const SLoginForm(),

              //Divider
              SFormDivider(dividerText: STexts.orSignInWith.capitalize!),
              const SizedBox(height: SSizes.spaceBtwSections),

              // Other login options
              SSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}