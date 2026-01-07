import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class SProductIngredient extends StatelessWidget {
  const SProductIngredient({
    super.key,
    required this.name,
    required this.quantity,
  });

  final String name, quantity;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace * 2),
      child: Row(
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.titleMedium!.apply(
              color: dark ? SColors.white : SColors.black,
            ),
          ),
          const SizedBox(width: SSizes.spaceBtwItems),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final dotCount = (constraints.maxWidth / 2).floor();

                return Text(
                  List.generate(dotCount, (index) => ".").join(),
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(color: Colors.grey),
                );
              },
            ),
          ),
          const SizedBox(width: SSizes.spaceBtwItems),
          Text(
            quantity,
            style: Theme.of(context).textTheme.titleMedium!.apply(
              color: dark ? SColors.white : SColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
