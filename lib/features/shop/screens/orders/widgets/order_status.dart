import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class SOrderStatus extends StatelessWidget {
  const SOrderStatus({
    super.key,
    required this.status,
    required this.dateTime,
    required this.imagePath,
  });

  final String status, dateTime, imagePath;

  @override
  Widget build(BuildContext context) {
    return SRoundedContainer(
      child: Stack(
        children: [
          Image(image: AssetImage(imagePath)),
          Positioned(
            top: 40,
            left: SSizes.defaultSpace,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(status, style: Theme.of(context).textTheme.headlineLarge),
                SizedBox(height: SSizes.spaceBtwItems),
                Text(dateTime, style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
