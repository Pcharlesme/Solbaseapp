// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solbase/screens/apphome/coins/component/components/appbar.dart';
import 'package:solbase/screens/apphome/coins/component/components/crypto_list.dart';
import 'package:solbase/screens/apphome/coins/component/components/for_you_section.dart';
import 'package:solbase/screens/apphome/coins/import_wallet.dart';
import 'package:solbase/screens/apphome/coins/wallet_card.dart';
import 'package:solbase/screens/apphome/homepage.dart';
import 'package:solbase/shared/appbutton.dart';

class WalletHomePage extends StatefulWidget {
  const WalletHomePage({Key? key}) : super(key: key);

  @override
  State<WalletHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<WalletHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MAppBar(),
                SizedBox(
                  height: 20,
                ),
                Wallets(),
                CustomButton(
                    text: "Send Money",
                    press: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (_) => const ImportWallet()));
                    }),
                ForYouSection(),
                CryptoList()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: selectedIndex,
          selectedItemColor: Color(0xff177DFF),
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (_) => HomePage()));
                  },
                  child: Icon(CupertinoIcons.home, size: 27)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bag_badge_plus, size: 27),
              label: 'Market',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart, size: 27),
              label: 'Community',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.link, size: 27),
              label: 'Explore',
            ),
          ],
        ),
      ),
    );
  }
}
