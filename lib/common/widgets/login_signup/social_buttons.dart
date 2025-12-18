import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class SSocialButtons extends StatelessWidget {
  const SSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // icon with google
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: SColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: SSizes.iconMd,
              height: SSizes.iconMd,
              image: AssetImage(SImages.googleLogo),
            ),
          ),
        ),
        // some space
        const SizedBox(width: SSizes.spaceBtwItems),

        // icon with facebook
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: SColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: SSizes.iconMd,
              height: SSizes.iconMd,
              image: AssetImage(SImages.facebookLogo),
            ),
          ),
        ),
      ],
    );
  }
}
