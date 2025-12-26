import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_containers.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class SPromoSlider extends StatelessWidget {
  const SPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    final controller = Get.put(HomeController());
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsGeometry.all(SSizes.defaultSpace),
          child: CarouselSlider(
            items: banners
                .map(
                  (url) => SRoundedImage(
                    imageUrl: url,
                    backgroundColor: dark ? Colors.black : Colors.white,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
            ),
          ),
        ),
        const SizedBox(height: SSizes.sm),
        // dots here
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                  SCircularContainer(
                    width: 1,
                    height: 20,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? SColors.primary
                        : SColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
