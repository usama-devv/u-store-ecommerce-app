import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class UCurvedEdgesWidget extends StatelessWidget {
  const UCurvedEdgesWidget({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: UCustomCurvedEdges(),
      child: child,
    );
  }
}