import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SPromoCode extends StatelessWidget {
  const SPromoCode({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = Theme.of(context).brightness == Brightness.dark;
    return SRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? SColors.dark : SColors.white,
      padding: const EdgeInsets.only(
        top: SSizes.sm,
        bottom: SSizes.sm,
        left: SSizes.md,
        right: SSizes.sm,
      ),
      child: Row(
        children: [
          // Input field for promo code
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Promo kod bormi? Kiriting",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          // Button to apply promo code
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                side: BorderSide.none,
              ),
              child: Text("Qo'llash"),
            ),
          ),
        ],
      ),
    );
  }
}
