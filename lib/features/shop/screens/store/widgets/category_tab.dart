import 'package:flutter/material.dart';

import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/products/product_card/product_card_vertical.dart';
import '../../../../../utils/constants/sizes.dart';

class STabBarCategory extends StatelessWidget {
  const STabBarCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              // Products
              SGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => SProductVertical(),
              ),
              const SizedBox(height: SSizes.spaceBtwSections,)
            ],
          ),
        ),
      ],
    );
  }
}
