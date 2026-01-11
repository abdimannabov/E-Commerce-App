import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import 'status_indicator.dart';

class SOrderCard extends StatelessWidget {
  const SOrderCard({
    super.key,
    required this.orderId,
    required this.orderDate,
    required this.itemCount,
    required this.totalPrice,
    required this.statusText,
    required this.isCompleted,
    required this.isPending,
  });

  final String orderId, orderDate, itemCount, totalPrice, statusText;
  final bool isCompleted, isPending;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: SSizes.defaultSpace,
        vertical: SSizes.spaceBtwItems,
      ),
      child: Center(
        child: Column(
          children: [
            SRoundedContainer(
              showBorder: false,
              backgroundColor: dark ? SColors.dark : SColors.light,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SStatusIndicator(isCompleted: isCompleted, isPending: isPending),
                        const SizedBox(width: SSizes.spaceBtwItems),

                        Column(
                          children: [
                            Text(
                              "Buyurrtma ID: ${orderId}",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            const SizedBox(height: SSizes.spaceBtwItems / 2),
                            Text(
                              "Sana: ${orderDate}",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ],
                        ),
                        Spacer(),

                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios),
                        ),
                      ],
                    ),
                    const SizedBox(height: SSizes.spaceBtwSections),

                    Row(
                      children: [
                        Text(
                          "Summa (${itemCount} ta mahsulot):",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Spacer(),
                        Text(
                          "${totalPrice} UZS",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          "Status:",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Spacer(),
                        Text(
                          statusText,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: SSizes.spaceBtwSections),

                    Row(
                      children: [
                        SizedBox(
                          width: 180,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              side: BorderSide.none,
                            ),
                            onPressed: () {},
                            child: Text("Muammo!"),
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 180,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.yellow,
                              side: BorderSide.none,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Qayta buyurtma berish",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
