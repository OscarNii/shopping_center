// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shopping_center/common/style/widgets/containers/shapes/curved_edges.dart';
import 'package:shopping_center/common/style/widgets/containers/tcontainer.dart';
import 'package:shopping_center/common/style/widgets/tcontainers_header.dart';
import 'package:shopping_center/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TContainerHeader(
            child: Container(),
          ),
        ],
      ),
    ));
  }
}
