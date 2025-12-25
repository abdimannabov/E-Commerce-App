import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/image_text/vertical_image_text.dart';

class SHomeCategories extends StatelessWidget {
  const SHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (_, index) {
          return SVerticalImageText(
            title: "Taomlar",
            image: SImages.foodImage,
            onTap: () {},
          );
        },
      ),
    );
  }
}
