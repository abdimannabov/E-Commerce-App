import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utilities.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SDeviceUtilities.getAppBarHeight(),
      right: SSizes.defaultSpace,
      child: TextButton(
        onPressed: OnBoardingController.instance.skipPage,
        child: Text("Skip"),
      ),
    );
  }
}
