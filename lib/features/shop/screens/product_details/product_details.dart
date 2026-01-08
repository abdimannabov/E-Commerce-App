import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curve_shapes/curved_edges_widget.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/buttons/purchase_button.dart';
import '../../../../common/widgets/icons/circular_icon.dart';
import '../../../../utils/constants/colors.dart';
import 'widgets/product_ingredients.dart';
import 'widgets/ratings_share.dart';
import 'widgets/reviews_map.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: SAppBar(
        title: Text(
          "Ba'tafsil",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SCurvedEdgesWidget(
              child: Container(
                color: dark ? SColors.darkGrey : SColors.light,
                child: Stack(
                  children: [
                    // Image of the product
                    SizedBox(
                      child: Center(
                        child: Image(image: AssetImage(SImages.productOsh)),
                      ),
                    ),

                    // Favourite icon
                    // Favourite icon
                    Positioned(
                      top: 5,
                      right: 5,
                      child: SCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                        size: SSizes.iconLg,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Ratings + share
            SRatingsShare(
              rating: "4.9",
              reviewCount: "(200 ta ovoz)",
              icon: Icons.share,
            ),
            const SizedBox(height: SSizes.spaceBtwItems),

            // Details
            SSectionHeading(title: "Osh", showActionButton: false),
            const SizedBox(height: SSizes.spaceBtwItems),

            SProductIngredient(name: "Guruch", quantity: "300 gr"),
            SProductIngredient(name: "Go'sht", quantity: "100 gr"),
            SProductIngredient(name: "Sabzi", quantity: "50 gr"),
            SProductIngredient(name: "Piyoz", quantity: "80 gr"),
            SProductIngredient(name: "Tuz", quantity: "1/3 qoshiq"),
            SProductIngredient(name: "Yog'", quantity: "1/2 piyola"),
            const SizedBox(height: SSizes.spaceBtwItems),

            // Description
            SSectionHeading(title: "Tavsifi"),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: SSizes.defaultSpace,
              ),
              child: Text(
                "Osh — go'sht va sabzavotlar bilan sekin pishirilgan, xushbo'y ziravorlarga boy, to'yimli va juda mazali guruchli taom. Har bir luqma muvozanatli, ozgina shirin va nihoyatda yoqimli. 🍽️✨",
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwSections),

            const Divider(),
            SReviewsMap(
              reviewCount: "200 ta ovoz",
              onPressed: () => Get.to(() => const ProductReviewsScreen()),
            ),

            // Purchase button
            SPurchaseButton(price: "35.000 UZS", onPressed: () {}),
            const SizedBox(height: SSizes.defaultSpace),
          ],
        ),
      ),
    );
  }
}
