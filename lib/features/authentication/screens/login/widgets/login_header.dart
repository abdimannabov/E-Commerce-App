import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SLoginHeader extends StatelessWidget {
  const SLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Image first
        Image(
          height: 150,
          image: AssetImage(dark ? SImages.darkAppLogo : SImages.lightAppLogo),
        ),
        // Title here
        Text(
          STexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        // Some space
        const SizedBox(height: SSizes.sm),
        Text(
          STexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
