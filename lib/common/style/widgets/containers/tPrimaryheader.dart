// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_center/common/style/widgets/containers/theader_container.dart';

import '../../../../DetailsHome/Cslider.dart';

class TPrimaryHeader extends StatelessWidget {
  const TPrimaryHeader({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return THeader(
      child: SizedBox(
          height: 400,
          child: Stack(
            children: const [
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Cslider(),
                // color: TColors.primary,
                // child: Stack(
                //   children: [
                //     Positioned(
                //       top: -150,
                //       right: -250,
                //       child: TCircularContainer(
                //         backgroundColor: TColors.textWhite.withOpacity(0.1),
                //       ),
                //     ),
                //     Positioned(
                //       top: 100,
                //       right: -300,
                //       child: TCircularContainer(
                //         backgroundColor: TColors.textWhite.withOpacity(0.1),
                //       ),
                //     ),
                //   ],
                // ),
              ),
            ],
          )),
    );
  }
}
