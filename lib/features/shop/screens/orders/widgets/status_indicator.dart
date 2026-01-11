import 'package:flutter/material.dart';

class SStatusIndicator extends StatelessWidget {
  const SStatusIndicator({
    super.key,
    this.isCompleted = false,
    this.isPending = false,
  });

  final bool isCompleted;
  final bool isPending;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: isCompleted ? Colors.green : isPending ? Colors.yellow : Colors.red, width: 2.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Icon(
        isCompleted ? Icons.check_circle : isPending ? Icons.hourglass_top : Icons.cancel,
        color: isCompleted ? Colors.green : isPending ? Colors.yellow : Colors.red,
        size: 32.0,
      ),
    );
  }
}
