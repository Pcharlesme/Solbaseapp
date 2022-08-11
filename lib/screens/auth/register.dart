import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solbase/const/color.dart';
import 'package:solbase/screens/views/welcome.dart';
import 'package:solbase/shared/appbutton.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: const Image(
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Register to get Started",
              style: TextStyle(
                fontSize: 16,
                color: kTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    filled: true,
                    fillColor: Color(0xffe7edeb),
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    hintStyle: TextStyle(color: Color.fromARGB(255, 17, 1, 1)),
                    hintText: 'Username'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    filled: true,
                    fillColor: Color(0xffe7edeb),
                    prefixIcon: Icon(Icons.email),
                    hintStyle: TextStyle(color: Color.fromARGB(255, 17, 1, 1)),
                    hintText: 'Email address'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: TextField(
                obscureText: true,
                autocorrect: false,
                enableSuggestions: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    fillColor: Color(0xffe7edeb),
                    hintStyle: TextStyle(color: Color.fromARGB(255, 14, 1, 1)),
                    hintText: 'Password'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "By signing up, you agree to our Terms",
              style: TextStyle(
                color: kPrimaryBColor,
                fontSize: 14,
              ),
            ),
            const Text(
              "Data Policy and Cookies Policy.",
              style: TextStyle(
                color: kSecondaryAColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomButton(
                text: "Register",
                press: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => WelcomePage()));
                }),
            const Text(
              "Sign up with",
              style: TextStyle(
                color: kPrimaryBColor,
                fontSize: 14,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 52,
                      width: 82,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: kPrimaryBColor)),
                      child: const Center(
                          child: Image(
                        image: AssetImage("assets/images/goolelogo.png"),
                        fit: BoxFit.fill,
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 52,
                      width: 82,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: kPrimaryBColor)),
                      child: const Center(
                          child: Image(
                        image: AssetImage("assets/images/logosbook.png"),
                        fit: BoxFit.fill,
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 52,
                      width: 82,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: kPrimaryBColor)),
                      child: const Center(
                          child: Image(
                        image: AssetImage("assets/images/metamask.png"),
                        fit: BoxFit.fill,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Already have an account ?",
                  style: TextStyle(
                    color: kPrimaryBColor,
                    fontSize: 14,
                  ),
                ),
                Text(
                  "Login",
                  style: TextStyle(
                    color: kSecondaryAColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
