import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class SPurchaseButton extends StatelessWidget {
  const SPurchaseButton({
    super.key,
    required this.price,
    required this.onPressed,
  });

  final String price;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: SColors.primary,
        side: BorderSide.none,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SSizes.md),
        child: Text("Buyurtma qilish - $price"),
      ),
    );
  }
}
