import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solbase/const/color.dart';
import 'package:solbase/controllers/trending_product.dart';
import 'package:solbase/screens/apphome/cards/card.dart';
import 'package:solbase/screens/apphome/coins/solana_wallet.dart';
import 'package:solbase/screens/apphome/item_product/product.dart';
import 'package:solbase/screens/apphome/item_product/product_model.dart';
import 'package:solbase/screens/auth/forgot_password.dart';
import 'package:solbase/screens/auth/meta_auth.dart';
import 'package:solbase/screens/auth/onboard.dart';
import 'package:solbase/screens/auth/register.dart';
import 'package:solbase/screens/apphome/homepage.dart';
import 'package:solbase/shared/appbutton.dart';

import '../apphome/cards/seller_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 60),
              child: Image(
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Log in to your Account",
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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    filled: true,
                    fillColor: Color(0xffF5F5FA),
                    prefixIcon: Icon(Icons.email),
                    hintStyle: TextStyle(color: Color.fromARGB(255, 17, 1, 1)),
                    hintText: 'Email address'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
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
                    fillColor: Color(0xffF5F5FA),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 190, 190, 211)),
                    hintText: 'Password'),
              ),
            ),
            CustomButton(
                text: "Login",
                press: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => RegisterScreen()));
                }),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 170),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, CupertinoPageRoute(builder: (_) => MyApp()));
                },
                child: const Text(
                  "Forgot Password ?",
                  style: TextStyle(
                    color: kSecondaryAColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Or Login with",
              style: TextStyle(
                color: kPrimaryBColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
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
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 52,
                      width: 82,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: kPrimaryBColor)),
                      child: const Center(
                          child: Image(
                        image: AssetImage("assets/images/apple.png"),
                        fit: BoxFit.fill,
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 52,
                      width: 82,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: kPrimaryBColor)),
                      child: Center(
                          child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (_) => MyHomePage(
                                        title: 'Metemask',
                                      )));
                        },
                        child: Image(
                          image: AssetImage("assets/images/metamask.png"),
                          fit: BoxFit.fill,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Dont have an account ?",
                  style: TextStyle(
                    color: kPrimaryBColor,
                    fontSize: 14,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (_) => const JoinOption()));
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      color: kSecondaryAColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
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
