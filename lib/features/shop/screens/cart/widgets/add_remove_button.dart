import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class AddRemoveItemButton extends StatelessWidget {
  const AddRemoveItemButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SCircularIcon(
          icon: Iconsax.minus,
          width: 24,
          height: 24,
          size: SSizes.sm,
          color: dark ? SColors.white : SColors.black,
          backgroundColor: dark ? SColors.darkGrey : SColors.light,
        ),
        const SizedBox(width: SSizes.sm),
        Text("1", style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(width: SSizes.sm),
        SCircularIcon(
          icon: Iconsax.add,
          width: 24,
          height: 24,
          size: SSizes.sm,
          color: dark ? SColors.white : SColors.black,
          backgroundColor: dark ? SColors.darkGrey : SColors.light,
        ),
      ],
    );
  }
}
