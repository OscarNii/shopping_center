// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_center/common/style/widgets/containers/circular_container.dart';
import 'package:shopping_center/common/style/widgets/containers/shapes/curved.dart';
import 'package:shopping_center/utils/constants/colors.dart';

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
