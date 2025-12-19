import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class STermsAndConditionsCheckbox extends StatelessWidget {
  const STermsAndConditionsCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: SSizes.spaceBtwItems),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${STexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: STexts.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? SColors.white : SColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? SColors.white : SColors.primary,
                  ),
                ),
                TextSpan(
                  text: ' va ',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                TextSpan(
                  text: STexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? SColors.white : SColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? SColors.white : SColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
