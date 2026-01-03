import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';

class SGridLayout extends StatelessWidget {
  const SGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 220,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: SSizes.gridViewSpacing,
        crossAxisSpacing: SSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
