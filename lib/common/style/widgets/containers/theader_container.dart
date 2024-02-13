import 'package:flutter/material.dart';
import 'package:shopping_center/common/style/widgets/containers/shapes/curved.dart';

class THeader extends StatelessWidget {
  const THeader({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCurvedEdges(),
      child: child,
    );
  }
}
