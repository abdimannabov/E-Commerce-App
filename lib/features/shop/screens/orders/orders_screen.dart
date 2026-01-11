import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'widgets/order_card.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: SAppBar(
        title: Text(
          "Buyurtmalar",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SOrderCard(
              orderId: '123456',
              orderDate: '2024-06-15',
              itemCount: '10',
              totalPrice: '250 000',
              statusText: 'Yetkazildi',
              isCompleted: true,
              isPending: false,
            ),
            SOrderCard(
              orderId: '789012',
              orderDate: '2024-06-16',
              itemCount: '5',
              totalPrice: '150 000',
              statusText: 'Kutilmoqda',
              isCompleted: false,
              isPending: true,
            ),
          ],
        ),
      ),
    );
  }
}
