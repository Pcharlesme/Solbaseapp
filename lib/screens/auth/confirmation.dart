import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solbase/const/color.dart';
import 'package:solbase/screens/auth/login.dart';
import 'package:solbase/shared/appbutton.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Image(
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Confirmation Code",
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
              "Enter the confirmation code we sent to your@mail.com.",
              style: TextStyle(
                fontSize: 16,
                color: kTextColor,
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
                    fillColor: Color(0xffe7edeb),
                    prefixIcon: Icon(Icons.email),
                    hintStyle: TextStyle(color: Color.fromARGB(255, 17, 1, 1)),
                    hintText: 'Confirmation Code'),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: const [
                Text(
                  "Didn't receive the code? ",
                  style: TextStyle(
                    color: kPrimaryBColor,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Resend",
                  style: TextStyle(
                    color: kSecondaryAColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            CustomButton(
                text: " Submit",
                press: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => LoginScreen()));
                }),
            CustomSecondButton(text: "Cancel", press: () {}),
          ],
        ),
      ),
    );
  }
}
