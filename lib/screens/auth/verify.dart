import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solbase/const/color.dart';
import 'package:solbase/screens/views/welcome.dart';
import 'package:solbase/shared/appbutton.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: const Image(
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Email Sent",
              style: TextStyle(
                fontSize: 16,
                color: kTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "We sent an email to y***@mail.com with a link\nto get back into your account.",
              style: TextStyle(
                fontSize: 16,
                color: kTextColor,
              ),
            ),
            CustomSecondButton(
                text: "Cancel",
                press: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => WelcomePage()));
                }),
          ],
        ),
      ),
    );
  }
}
