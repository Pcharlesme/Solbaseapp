import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solbase/screens/apphome/homepage.dart';
import 'package:solbase/shared/appbutton.dart';

import '../../const/color.dart';

class WelcomeSuccess extends StatelessWidget {
  const WelcomeSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"))),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 140),
              child: Image(
                image: AssetImage("assets/images/onboardnow.png"),
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Center(
                child: Text(
                  "You are ready to go!.",
                  style: TextStyle(
                    color: kPrimaryBColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
              child: Text(
                "Congratulation, any interesting topics will be shortly in your hands!.",
                style: TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            CustomButton(
                text: "Finish",
                press: () {
                  Navigator.push(
                      context, CupertinoPageRoute(builder: (_) => HomePage()));
                })
          ],
        ),
      ),
    );
  }
}
