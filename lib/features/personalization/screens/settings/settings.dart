import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/header_container.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/personalization/screens/settings/widgets/settings_menu.dart';
import 'package:e_commerce_app/features/shop/screens/addresses/addresses.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import 'widgets/user_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            SPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar here
                  SAppBar(
                    title: Text(
                      "Sozlamalar",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: SColors.white),
                    ),
                  ),
                  const SizedBox(height: SSizes.spaceBtwSections),

                  // User profile
                  SUserCard(),
                  const SizedBox(height: SSizes.spaceBtwSections),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(SSizes.spaceBtwItems),
              child: Column(
                children: [
                  // Account Settings

                  // Header
                  const SSectionHeading(
                    title: "Asosiy",
                    showActionButton: false,
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems),

                  // Menu
                  // Account settings
                  SSettingsMenu(
                    icon: Iconsax.home,
                    title: "Manzil",
                    subtitle: "Eltib berish joyini tahrirlash",
                    onTap: () => Get.to(() => const AddressesScreen()),
                  ),
                  const SSettingsMenu(
                    icon: Iconsax.shopping_cart,
                    title: "Mening savatim",
                    subtitle: "Mahsulot qo'shish/olib tashlash/buyurtma berish",
                  ),
                  const SSettingsMenu(
                    icon: Iconsax.bag_tick,
                    title: "Mening buyurtmalarim",
                    subtitle: "Buyurtmalar tarixi",
                  ),
                  const SSettingsMenu(
                    icon: Iconsax.bank,
                    title: "Mening bankim",
                    subtitle: "Bank orqali hisob to'ldirish",
                  ),
                  const SSettingsMenu(
                    icon: Iconsax.discount_shape,
                    title: "Kuponlar",
                    subtitle: "Kuponingiz bormi?",
                  ),
                  const SSettingsMenu(
                    icon: Iconsax.notification,
                    title: "Bildirishnomalar",
                    subtitle: "Bildirnomani tahrirlash",
                  ),
                  const SSettingsMenu(
                    icon: Iconsax.security_card,
                    title: "Hisob maxfiyligi",
                    subtitle: "Hisobingizni himoya qiling",
                  ),
                  const SizedBox(height: SSizes.spaceBtwSections),

                  const SSectionHeading(
                    title: "Qo'shimcha tanlovlar",
                    showActionButton: false,
                  ),
                  const SizedBox(height: SSizes.spaceBtwSections),

                  SSettingsMenu(
                    icon: Iconsax.moon5,
                    title: "Kun/tun rejimi",
                    subtitle: "Fonni yorug'/qorong'u qilish",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SSettingsMenu(
                    icon: Iconsax.coin,
                    title: "Hisob",
                    subtitle: "Pulni ko'rsatish yoki bekitish",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  // Logout button
                  const SizedBox(height: SSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("Chiqish"),
                    ),
                  ),
                  const SizedBox(height: SSizes.spaceBtwSections,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
