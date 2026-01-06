import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class SCircularIcon extends StatelessWidget {
  const SCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = SSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor = Colors.transparent,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : SHelperFunctions.isDarkMode(context)
            ? SColors.black.withOpacity(0.9)
            : SColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Center(
          child: Icon(icon, color: color, size: size),
        ),
      ),
    );
  }
}
