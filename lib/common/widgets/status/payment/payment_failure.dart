import 'package:e_commerce_app/features/shop/screens/home/home_screen.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentFailure extends StatelessWidget {
  const PaymentFailure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Icon(Icons.error_outline, color: Colors.red, size: 100),
                const SizedBox(height: 20),
                const Text(
                  'Payment Failed!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: SSizes.spaceBtwSections),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: SSizes.defaultSpace * 2,
                  vertical: SSizes.defaultSpace,
                ),
              ),
              onPressed: () => Get.back(),
              child: const Text("Qaytadan urinish"),
            ),
          ],
        ),
      ),
    );
  }
}
