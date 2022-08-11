import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solbase/const/color.dart';

import 'onboarding.dart';

class SplashScrren extends StatefulWidget {
  const SplashScrren({Key? key}) : super(key: key);

  @override
  State<SplashScrren> createState() => _SplashScrrenState();
}

class _SplashScrrenState extends State<SplashScrren> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), (() {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Onbording()));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Image(
            image: AssetImage("assets/images/logo.png"),
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Solbase...",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: kTextColor,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Version 1.1",
              style: TextStyle(
                color: kTextColor,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
