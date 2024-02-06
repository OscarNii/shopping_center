
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shopping_center/common/style/widgets/containers/shapes/curved_edges.dart';
import 'package:shopping_center/common/style/widgets/containers/tcontainer.dart';
import 'package:shopping_center/utils/constants/colors.dart';

class TContainerHeader extends StatelessWidget {
  const TContainerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TEdges(
      child: ,
    );
  }
}

class TEdges extends StatelessWidget {
  const TEdges({
    super.key, this.child,
  });

  final Widget? child;






  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: ClipPath(
        clipper: TCurvedEdges(),
        child: child,
      ),
    );
  }
}
