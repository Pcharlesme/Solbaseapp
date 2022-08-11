import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solbase/screens/apphome/coins/payment.dart';
import 'package:solbase/screens/apphome/comm/homecom.dart';
import 'package:solbase/shared/naritem.dart';

import '../screens/apphome/homepage.dart';

class BottomNarBar extends StatelessWidget {
  const BottomNarBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            title: "Home",
            isActive: true,
            svgScr: "assets/icons/home.svg",
            press: () {
              Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => HomePage()));
            },
          ),
          BottomNavItem(
            title: "Wallet",
            svgScr: "assets/icons/more.svg",
            press: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (_) => WalletHomePage()));
            },
          ),
          BottomNavItem(
            title: "Community",
            svgScr: "assets/icons/com.svg",
            press: () {
              Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => CommunityHome()));
            },
          ),
          BottomNavItem(
            title: "More",
            svgScr: "assets/icons/more.svg",
            press: () {
              //Get.to(const LoginScreen());
            },
          ),
        ],
      ),
    );
  }
}
