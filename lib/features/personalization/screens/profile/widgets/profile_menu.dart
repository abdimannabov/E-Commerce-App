import 'package:flutter/material.dart';

class SProfileMenu extends StatelessWidget {
  const SProfileMenu({
    super.key,
    required this.title,
    required this.value,
    required this.onPressed,
  });

  final String title, value;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.bodyLarge),
          Text(value, style: Theme.of(context).textTheme.bodyMedium),
          const Divider(),
        ],
      ),
    );
  }
}
