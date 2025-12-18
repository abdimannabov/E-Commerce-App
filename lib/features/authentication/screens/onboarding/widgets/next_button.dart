import 'package:e_commerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utilities.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Positioned(
      right: SSizes.defaultSpace,
      bottom: SDeviceUtilities.getBottomNavigationBarHeight() + 20,
      child: ElevatedButton(
        onPressed: OnBoardingController.instance.nextPage,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? SColors.primary : Colors.black
        ),
        child: const Icon(Iconsax.arrow_right_3)
      )
    );
  }
}
