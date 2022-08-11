import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solbase/const/color.dart';
import 'package:solbase/screens/welcome/personalize.dart';
import 'package:solbase/shared/appbutton.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 120),
              child: Text(
                "Welcome!",
                style: TextStyle(
                  color: kSecondaryAColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
              child: Text(
                "Find what you are looking for",
                style: TextStyle(
                  color: kPrimaryBColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 38,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
              child: Text(
                "By personalize your account, we can help you to find what you like.",
                style: TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ),
              ),
            ),
            CustomButton(
                text: "Personalize Your Account",
                press: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => PersonalizePage()));
                }),
            CustomSecondButton(text: "Skip", press: () {}),
          ],
        ),
      ),
    );
  }
}
