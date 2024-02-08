import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shopping_center/common/style/widgets/containers/shapes/curved_edges.dart';
import 'package:shopping_center/common/style/widgets/containers/shapes/tedges.dart';
import 'package:shopping_center/common/style/widgets/containers/tcontainer.dart';

import '../../../utils/constants/colors.dart';

class TContainerHeader extends StatelessWidget {
  const TContainerHeader({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return TEdges(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: TContainer(
                      backgroundColor: TColors.textWhite.withOpacity(0.1))),
              Positioned(
                  top: 100,
                  right: -300,
                  child: TContainer(
                      backgroundColor: TColors.textWhite.withOpacity(0.1))),
            ],
          ),
        ),
      ),
    );
  }
}
