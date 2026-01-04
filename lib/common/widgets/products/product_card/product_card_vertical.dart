import 'package:e_commerce_app/common/styles/shadows.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../icons/circular_icon.dart';

class SProductVertical extends StatelessWidget {
  const SProductVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [SShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(SSizes.productImageRadius),
          color: dark ? SColors.darkGrey : SColors.white,
        ),
        child: Column(
          children: [
            // Image, wishlist, discount
            SRoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(SSizes.md),
              backgroundColor: dark ? SColors.dark : SColors.light,
              child: Stack(
                children: [
                  // Image
                  SRoundedImage(
                    imageUrl: SImages.productOsh,
                    applyImageRadius: true,
                  ),

                  // Discount tag
                  Positioned(
                    top: 6,
                    child: SRoundedContainer(
                      radius: SSizes.sm,
                      backgroundColor: SColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: SSizes.sm,
                        vertical: SSizes.xs,
                      ),
                      child: Text(
                        "25%",
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium!.apply(color: SColors.black),
                      ),
                    ),
                  ),

                  // Favourite icon
                  Positioned(
                    top: 4,
                    right: 4,
                    child: SCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      size: SSizes.iconSm,
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwItems / 2),

            // details
            Padding(
              padding: const EdgeInsets.only(left: SSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // title
                  SProductTitleText(title: "Osh", smallSize: false),
                  SizedBox(height: SSizes.spaceBtwItems / 2),
                ],
              ),
            ),

            Spacer(),
            // price + add button
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // price
                  SProductPriceText(price: '35.000 UZS'),
                  // button
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.add_circle, size: SSizes.iconLg),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
