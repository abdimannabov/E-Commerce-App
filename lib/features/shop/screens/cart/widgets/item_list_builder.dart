import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import 'add_remove_button.dart';

class SItemListBuilder extends StatelessWidget {
  const SItemListBuilder({super.key, this.showRemoveButton = true});

  final bool showRemoveButton;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, index) => SRoundedContainer(
        width: double.infinity,
        backgroundColor: dark ? Colors.black : Colors.white,
        margin: const EdgeInsets.only(bottom: SSizes.spaceBtwItems),
        child: Row(
          children: [
            // image
            SRoundedImage(
              imageUrl: SImages.productOsh,
              width: 90,
              height: 80,
              backgroundColor: SColors.grey.withOpacity(0.5),
            ),
            const SizedBox(width: SSizes.spaceBtwItems),

            //details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Osh", style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: SSizes.spaceBtwItems),
                  if (showRemoveButton)
                    AddRemoveItemButton()
                  else
                    Text(
                      "Soni: 1",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                ],
              ),
            ),

            Spacer(),

            Text(
              "35.000 UZS",
              style: Theme.of(
                context,
              ).textTheme.titleMedium!.apply(color: SColors.primary),
            ),
          ],
        ),
      ),
      separatorBuilder: (_, __) => const SizedBox(height: SSizes.spaceBtwItems),
      itemCount: 5,
    );
  }
}
