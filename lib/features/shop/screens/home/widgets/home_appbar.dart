import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/cart/cart.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';

class SHomeAppBar extends StatelessWidget {
  const SHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            STexts.appBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: SColors.grey),
          ),
          Text(
            STexts.appBarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineMedium!.apply(color: SColors.white),
          ),
        ],
      ),
      action: [
        SCartCounterIcon(onPressed: () => Get.to(() => const CartScreen())),
      ],
    );
  }
}
