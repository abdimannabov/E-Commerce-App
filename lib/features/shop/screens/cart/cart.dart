import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/cart/widgets/item_list_builder.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/checkout_screen.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Text("Savat", style: Theme.of(context).textTheme.headlineMedium),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: SItemListBuilder(showRemoveButton: true),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => CheckoutScreen()),
          child: Text("Hisob: 35.000 UZS"),
        ),
      ),
    );
  }
}
