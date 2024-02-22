import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Image.asset('assets/onboarding image.png',
          width: 150,
          height: 150,
          )
      )
    );
  }
}