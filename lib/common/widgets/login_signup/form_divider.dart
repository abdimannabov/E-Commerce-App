import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class SFormDivider extends StatelessWidget {
  const SFormDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? SColors.darkGrey : SColors.grey,
            indent: 60,
            thickness: 0.5,
            endIndent: 5,
          ),
        ),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: dark ? SColors.darkGrey : SColors.grey,
            indent: 5,
            thickness: 0.5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
