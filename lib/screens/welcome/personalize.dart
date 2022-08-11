import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solbase/const/color.dart';
import 'package:solbase/screens/apphome/homepage.dart';
import 'package:solbase/screens/auth/login.dart';

import 'package:solbase/screens/welcome/welcome_success.dart';
import 'package:solbase/shared/appbutton.dart';
import 'package:solbase/shared/suggestion.dart';

class PersonalizePage extends StatelessWidget {
  const PersonalizePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 150,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
              child: Text(
                "Personalize Suggestion",
                style: TextStyle(
                  color: kPrimaryBColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
              child: Text(
                "Choose min. 3 topic you like, we will \ngive you more often that relate to it.",
                style: TextStyle(
                  color: kPrimaryBColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    filled: true,
                    fillColor: Color(0xffF5F5FA),
                    hintStyle: TextStyle(color: Color.fromARGB(255, 17, 1, 1)),
                    hintText: 'Search Categories'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: const [
                  SuggestionBox(text: "Art"),
                  SuggestionBox(text: "Business"),
                  SuggestionBox(text: "Travel")
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: const [
                  SuggestionBox(text: "Comedy"),
                  SuggestionBox(text: "Culture"),
                  SuggestionBox(text: "Music")
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: const [
                  SuggestionBox(text: "Tech"),
                  SuggestionBox(text: "Education"),
                  SuggestionBox(text: "Crypto")
                ],
              ),
            ),
            CustomButton(
                text: "Submit",
                press: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => WelcomeSuccess()));
                }),
            CustomSecondButton(
                text: "Skip",
                press: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => LoginScreen()));
                }),
          ],
        ),
      ),
    );
  }
}
