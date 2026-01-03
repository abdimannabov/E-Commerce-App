import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_card/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import 'widgets/home_appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/header_container.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shapes/containers/search_bar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Home App Bar here
                  const SHomeAppBar(),
                  const SizedBox(height: SSizes.spaceBtwSections),

                  // Search Bar here
                  SSearchContainer(
                    text: "Qidiruv",
                    showBackGround: true,
                    showBorder: true,
                    icon: Iconsax.search_normal,
                  ),

                  //Categories here
                  Padding(
                    padding: const EdgeInsets.all(SSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading part for category
                        SSectionHeading(title: 'Trenddagi kategoriyalar'),
                        const SizedBox(height: SSizes.spaceBtwItems),

                        // Categories
                        SHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body - Image Carousel
            Padding(
              padding: const EdgeInsets.all(SSizes.defaultSpace),
              child: Column(
                children: [
                  SPromoSlider(
                    banners: [
                      SImages.plovImage,
                      SImages.samsaImage,
                      SImages.ayranImage,
                    ],
                  ),
                  const SizedBox(height: SSizes.spaceBtwSections),

                  // Products
                  SGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => SProductVertical(),
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
