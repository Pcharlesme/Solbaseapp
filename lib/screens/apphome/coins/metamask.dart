import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solbase/screens/apphome/homepage.dart';
import 'package:solbase/shared/appbutton.dart';

import '../../../shared/bottomnav.dart';

class MetaMask extends StatelessWidget {
  const MetaMask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNarBar(),
      appBar: AppBar(
        title: Text(
          "MetaMask",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xfff2e2e5d)),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 23,
            backgroundImage: AssetImage('meta.png'),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
                  hintText: 'Wallet address'),
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
                  hintText: 'OTP'),
            ),
          ),
          const SizedBox(height: 40),
          CustomButton(
              text: "Authenticate",
              press: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (_) => const HomePage()),
                );
              })
        ],
      ),
    );
  }
}
