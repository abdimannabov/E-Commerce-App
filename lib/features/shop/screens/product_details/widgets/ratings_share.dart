import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';

class SRatingsShare extends StatelessWidget {
  const SRatingsShare({
    super.key,
    required this.rating,
    required this.reviewCount,
    required this.icon,
  });

  final String rating, reviewCount;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Iconsax.star1, color: Colors.amber, size: SSizes.iconSm),
          const SizedBox(width: SSizes.sm),
          Text(rating, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(width: SSizes.sm),
          Text(reviewCount, style: Theme.of(context).textTheme.bodyMedium),

          const Spacer(),

          Icon(icon, size: SSizes.iconMd),
        ],
      ),
    );
  }
}
