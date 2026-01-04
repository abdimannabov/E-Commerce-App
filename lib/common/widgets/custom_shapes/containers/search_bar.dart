import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utilities.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SSearchContainer extends StatelessWidget {
  const SSearchContainer({
    super.key,
    required this.text,
    this.icon,
    required this.showBackGround,
    required this.showBorder,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace)
  });

  final String text;
  final IconData? icon;
  final bool showBackGround, showBorder;
  final void Function()? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: SDeviceUtilities.getScreenWidth(context),
          padding: const EdgeInsets.all(SSizes.md),
          decoration: BoxDecoration(
            color: showBackGround
                ? dark
                      ? SColors.dark
                      : SColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(SSizes.borderRadiusLg),
            border: showBorder ? Border.all(color: SColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: SColors.darkGrey),
              const SizedBox(width: SSizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
