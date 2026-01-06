import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/search_bar.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_card/product_card_vertical.dart';
import '../../../../utils/constants/colors.dart';
import 'widgets/category_tab.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: SAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          action: [SCartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: SHelperFunctions.isDarkMode(context)
                    ? SColors.black
                    : SColors.white,
                expandedHeight: 160,

                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(SSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      // Search bar
                      SizedBox(height: SSizes.spaceBtwItems),
                      SSearchContainer(
                        text: 'Qidiruv',
                        icon: Iconsax.search_normal,
                        showBackGround: false,
                        showBorder: true,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: SSizes.spaceBtwSections),
                    ],
                  ),
                ),

                // Tab bar he
                bottom: STabBar(
                  tabs: [
                    Tab(child: Text("Taomlar")),
                    Tab(child: Text("Sho'rvalar")),
                    Tab(child: Text("Salatlar")),
                    Tab(child: Text("Desertlar")),
                    Tab(child: Text("Ichimliklar")),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              STabBarCategory(),
              STabBarCategory(),
              STabBarCategory(),
              STabBarCategory(),
              STabBarCategory(),
            ],
          ),
        ),
      ),
    );
  }
}
