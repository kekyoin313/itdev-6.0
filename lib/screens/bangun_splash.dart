import 'package:flutter/material.dart';
import 'dart:async';

class BangunSplash extends StatefulWidget {
  const BangunSplash({super.key});

  @override
  State<BangunSplash> createState() => _BangunSplashState();
}

class _BangunSplashState extends State<BangunSplash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('asset/image 13.png')],
        ),
      ),
    );
  }
}
