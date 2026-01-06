import 'package:e_commerce_app/utils/device/device_utilities.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class STabBar extends StatelessWidget implements PreferredSizeWidget {
  const STabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      labelColor: SHelperFunctions.isDarkMode(context)
          ? SColors.white
          : SColors.black,
      indicatorColor: SColors.primary,
      unselectedLabelColor: SColors.darkGrey,
      tabs: tabs,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(SDeviceUtilities.getAppBarHeight());
}
