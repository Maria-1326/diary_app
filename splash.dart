import 'dart:async';
import 'package:diaryapp/onbording1.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OnBording1(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFB347),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset("images/frame 1.png")),
            ),
            Align(
                alignment: Alignment.center,
                child: Image.asset("images/frame 2.png")),
            Expanded(
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset("images/frame 3.png"))),
          ],
        ));
  }
}
