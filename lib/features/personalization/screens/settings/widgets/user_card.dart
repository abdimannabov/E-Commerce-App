import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/features/personalization/controllers/user_controller.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/profile.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/colors.dart';

class SUserCard extends StatelessWidget {
  const SUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return ListTile(
      leading: const SRoundedImage(
        width: 50,
        height: 50,
        imageUrl: SImages.userPicture,
      ),
      title: Text(
        controller.user.value.fullName,
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: SColors.white),
      ),
      subtitle: Text(
        controller.user.value.email,
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: SColors.white),
      ),
      trailing: IconButton(
        onPressed: () => Get.to(() => const ProfileScreen()),
        icon: Icon(
          Iconsax.edit,
          color: SHelperFunctions.isDarkMode(context)
              ? SColors.white
              : SColors.black,
        ),
      ),
    );
  }
}
