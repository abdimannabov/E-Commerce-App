import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Humo", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),

            Spacer(),

            Text("**** **** **** 1234",
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 8),
            Text("Amal qiladi: 12/24",
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
