import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/addresses/add_addresses.dart';
import 'package:e_commerce_app/features/shop/screens/addresses/widgets/single_address.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Text(
          "Manzillar",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              SSingleAddress(
                selectedAddress: false,
                name: "John Doe",
                phoneNum: "+1234567890",
                address: "123 Main St, City, Country",
              ),
              SSingleAddress(
                selectedAddress: false,
                name: "Jane Smith",
                phoneNum: "+0987654321",
                address: "456 Elm St, City, Country",
              ),
              SSingleAddress(
                selectedAddress: true,
                name: "Alice Johnson",
                phoneNum: "+1122334455",
                address: "789 Oak St, City, Country",
              ),
              SSingleAddress(
                selectedAddress: false,
                name: "Bob Brown",
                phoneNum: "+5566778899",
                address: "101 Pine St, City, Country",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
