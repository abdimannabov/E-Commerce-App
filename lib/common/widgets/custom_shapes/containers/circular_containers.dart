import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SCircularContainer extends StatelessWidget {
  const SCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    required this.radius,
    required this.padding,
    this.child,
    this.backgroundColor = SColors.white,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      width: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
    );
  }
}
