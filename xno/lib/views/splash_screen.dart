import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:xno/views/xo/xo_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => XOScreen()));
    });
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Lottie.asset('assets/ani.json', errorBuilder: (c, o, t) {
            return Text("Error");
          }),
        ),
      ),
    );
  }
}
