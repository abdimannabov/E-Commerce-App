import 'package:e_commerce_app/common/widgets/custom_shapes/curve_shapes/curved_edges.dart';
import 'package:flutter/material.dart';

class SCurvedEdgesWidget extends StatelessWidget {
  const SCurvedEdgesWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: SCustomCurvedEdges(), child: child);
  }
}
