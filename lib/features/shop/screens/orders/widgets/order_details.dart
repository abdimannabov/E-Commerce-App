import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'order_status.dart';

class OrderItem {
  final String name;
  final int qty;
  final String price;

  OrderItem({required this.name, required this.qty, required this.price});
}

class OrderDetails extends StatelessWidget {
  OrderDetails({super.key});

  final List<OrderItem> items = [
    OrderItem(name: "Osh", qty: 2, price: "50 000 so'm"),
    OrderItem(name: "Mastava", qty: 3, price: "60 000 so'm"),
    OrderItem(name: "Non", qty: 4, price: "12 000 so'm"),
    OrderItem(name: "Qora Choy", qty: 1, price: "6 000 so'm"),
  ];

  Widget orderRow(BuildContext context, OrderItem item) {
    return Row(
      children: [
        Text(
          "${item.qty} x ${item.name}",
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.apply(color: SColors.black),
        ),
        Spacer(),
        Text(
          item.price,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.apply(color: SColors.black),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Text(
          "Buyurtma tafsilotlari",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              // Order status
              SOrderStatus(
                status: 'Yetkazildi',
                dateTime: 'Seshanba, Oktyabr 3, 2024 14:30',
                imagePath: SImages.deliveredImage,
              ),
              SizedBox(height: SSizes.xl),

              SRoundedContainer(
                width: double.infinity,
                showBorder: true,
                borderColor: Colors.transparent,
                backgroundColor: Colors.lime[50]!,
                child: Padding(
                  padding: const EdgeInsets.all(SSizes.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Buyurtma ID: 123456",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium!.apply(color: SColors.black),
                      ),
                      SizedBox(height: SSizes.spaceBtwItems / 2),
                      Column(
                        children: [
                          ...items.map((e) => orderRow(context, e)),
                          Divider(),
                          Row(
                            children: [
                              Text(
                                "Jami:",
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .apply(
                                      color: SColors.black,
                                      fontWeightDelta: 2,
                                    ),
                              ),
                              Spacer(),
                              Text(
                                "68 000 so'm",
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .apply(
                                      color: SColors.black,
                                      fontWeightDelta: 2,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(height: SSizes.spaceBtwItems),

                          Text(
                            "Yetkazib berish manzili:",
                            style: Theme.of(context).textTheme.bodyMedium!
                                .apply(
                                  color: SColors.black,
                                  fontWeightDelta: 2,
                                ),
                          ),
                          SizedBox(height: SSizes.spaceBtwItems / 2),
                          Text(
                            "Toshkent sh., Yunusobod tumani, Xalqlar do'stligi ko'chasi",
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.apply(color: SColors.black),
                          ),
                          SizedBox(height: SSizes.spaceBtwItems),
                          Text(
                            "Mijoz: Ali Valiyev",
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.apply(color: SColors.black),
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
      ),
    );
  }
}
