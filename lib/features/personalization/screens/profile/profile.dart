import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/personalization/controllers/user_controller.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/widgets/change_name.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Scaffold(
      appBar: SAppBar(title: Text("Hisob ma'lumotlari"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile pic
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        const SRoundedImage(
                          imageUrl: SImages.userPicture,
                          width: 80,
                          height: 80,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Rasmni o'zgartirish"),
                        ),
                      ],
                    ),
                  ),

                  // Details
                  const SizedBox(height: SSizes.spaceBtwItems / 2),
                  const Divider(),
                  const SizedBox(height: SSizes.spaceBtwItems),
                  const SSectionHeading(
                    title: "Hisob ma'lumotlari",
                    showActionButton: false,
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems),

                  // Names
                  SProfileMenu(
                    title: "F.I.SH",
                    value: controller.user.value.fullName,
                    onPressed: () => Get.to(() => const ChangeName()),
                  ),
                  SProfileMenu(
                    title: "Foydalanuvchi nomi",
                    value: controller.user.value.username,
                    onPressed: () => Get.to(() => const ChangeName()),
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems),

                  // Email, Phone, delete account
                  SSectionHeading(
                    title: "Shaxsiy ma'lumotlar",
                    showActionButton: false,
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems),
                  SProfileMenu(
                    title: "Telefon raqam",
                    value: controller.user.value.phoneNumber,
                    onPressed: () {},
                  ),
                  SProfileMenu(
                    title: "Email",
                    value: controller.user.value.email,
                    onPressed: () {},
                  ),
                  SProfileMenu(
                    title: "Manzil",
                    value: "Uzb, Tashkent",
                    onPressed: () {},
                  ),
                  SProfileMenu(
                    title: "Tug'ilgan sana",
                    value: "27.10.2004",
                    onPressed: () {},
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems),
                ],
              ),

              Center(
                child: SRoundedContainer(
                  backgroundColor: SHelperFunctions.isDarkMode(context)
                      ? SColors.black
                      : SColors.white,
                  child: TextButton(
                    onPressed: () => controller.deleteAccountWarningPopup(),
                    child: Text(
                      "Hisobni o'chirish",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium!.apply(color: Colors.red),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
