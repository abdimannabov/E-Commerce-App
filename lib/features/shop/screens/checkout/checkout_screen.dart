import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/status/payment/payment_success.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/products/promo_code/promo_code.dart';
import '../../../../common/widgets/user_cards/card.dart';

class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({super.key});

  final PageController _pageController = PageController(viewportFraction: 0.72);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Text(
          "To'lov",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: SSizes.defaultSpace,
            vertical: SSizes.defaultSpace * 2,
          ),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Umumiy summa",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: SSizes.defaultSpace),
                Text(
                  "250 000 UZS",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: SSizes.defaultSpace * 2),

                SPromoCode(),
                const SizedBox(height: SSizes.defaultSpace * 2),

                const Text(
                  "Saqlangan kartalar",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: SSizes.defaultSpace),

                SizedBox(
                  height: 230,
                  child: PageView.builder(
                    itemCount: 3,
                    controller: _pageController,
                    itemBuilder: (context, index) {
                      return AnimatedBuilder(
                        animation: _pageController,
                        builder: (context, child) {
                          double value = 1.0;
                          if (_pageController.position.haveDimensions) {
                            value = _pageController.page! - index;
                            value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
                          }

                          return Center(
                            child: SizedBox(
                              height: Curves.easeOut.transform(value) * 210,
                              width: Curves.easeOut.transform(value) * 320,
                              child: child,
                            ),
                          );
                        },
                        child: CardWidget(),
                      );
                    },
                  ),
                ),
                const SizedBox(height: SSizes.sm),

                TextButton(
                  onPressed: () {},
                  child: Text("Yangi karta qo'shish"),
                ),
                const SizedBox(height: SSizes.defaultSpace * 2),

                ElevatedButton(
                  onPressed: () => Get.to(() => const PaymentSuccess()),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: SColors.primary,
                    side: BorderSide.none,
                    padding: const EdgeInsets.symmetric(
                      horizontal: SSizes.defaultSpace * 4,
                      vertical: SSizes.defaultSpace,
                    ),
                  ),
                  child: Text(
                    "To'lash",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(color: Colors.white),
                  ),
                ),
                const SizedBox(height: SSizes.lg * 1.5),

                const Text(
                  "Barchasi himoyalangan",
                  style: TextStyle(color: SColors.darkGrey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
