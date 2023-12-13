import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:xno/views/xo/xo_screen.dart';

// ignore: must_be_immutable
class WinScreen extends StatelessWidget {
  WinScreen({super.key, required this.t});
  String? t;
  WinScreen.text({this.t});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => XOScreen()));
    });
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/win.json'),
              Text(t!),
            ],
          ),
        ),
      ),
    );
  }
}
