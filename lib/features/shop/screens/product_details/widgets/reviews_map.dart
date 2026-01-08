import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SReviewsMap extends StatelessWidget {
  const SReviewsMap({super.key, required this.reviewCount, this.onPressed});

  final String reviewCount;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(SSizes.md),
      child: SRoundedContainer(
        height: 40,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            const SizedBox(width: SSizes.defaultSpace),
            Text(
              "Sharhlar ($reviewCount)",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: SHelperFunctions.isDarkMode(context)
                    ? SColors.light
                    : SColors.dark,
              ),
            ),

            Spacer(),

            GestureDetector(
              onTap: onPressed,
              child: Icon(Iconsax.arrow_right_3),
            ),
            const SizedBox(width: SSizes.sm),
          ],
        ),
      ),
    );
  }
}
