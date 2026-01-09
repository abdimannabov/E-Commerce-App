import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Text(
          "Yangi manzil qo'shish",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: "Ism",
                  ),
                ),
                const SizedBox(height: SSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile),
                    labelText: "Telefon raqam",
                  ),
                ),
                const SizedBox(height: SSizes.spaceBtwInputFields),

                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building_31),
                          labelText: "Ko'cha",
                        ),
                      ),
                    ),
                    const SizedBox(width: SSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.document_code4),
                          labelText: "Pochta indeksi",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: SSizes.spaceBtwInputFields),

                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          labelText: "Shahar",
                        ),
                      ),
                    ),
                    const SizedBox(width: SSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.map),
                          labelText: "Viloyat",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: SSizes.spaceBtwInputFields),

                TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.flag),
                    labelText: "Davlat",
                  ),
                ),
                const SizedBox(height: SSizes.defaultSpace),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: SColors.primary,
                      side: BorderSide.none
                    ),
                    onPressed: () {
                      // Save address action
                    },
                    child: const Text("Saqlash"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
