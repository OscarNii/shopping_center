import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cslider extends StatefulWidget {
  const Cslider({super.key});

  @override
  State<Cslider> createState() => _CsliderState();
}

class _CsliderState extends State<Cslider> {
  List<String> imagePaths = [
    'assets/building6.jpeg',
    'assets/building5.jpeg',
    'assets/building4.jpeg',
    'assets/building3.jpeg',
    'assets/building2.jpeg',
    "assets/buiding1.jpeg",
    'assets/building4.jpeg',
    'assets/building3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: imagePaths.map((imagePaths) {
          return Builder(
            builder: (BuildContext context) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  imagePaths,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        }).toList(),
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          enlargeCenterPage: true,
          height: 320,
          aspectRatio: 0.5,
          enableInfiniteScroll: true,
          viewportFraction: 0.6,
        ));
  }
}
