import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SItemInCart extends StatelessWidget {
  const SItemInCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SRoundedContainer(
      width: double.infinity,
      backgroundColor: dark ? Colors.black : Colors.white,
      margin: const EdgeInsets.only(bottom: SSizes.spaceBtwItems),
      child: Row(
        children: [
          // image
          SRoundedImage(
            imageUrl: SImages.productOsh,
            width: 90,
            height: 80,
            backgroundColor: SColors.grey.withOpacity(0.5),
          ),
          const SizedBox(width: SSizes.spaceBtwItems),

          //details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Osh", style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: SSizes.spaceBtwItems),
                Row(
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

                    Spacer(),

                    Text(
                      "35.000 UZS",
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium!.apply(color: SColors.primary),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
