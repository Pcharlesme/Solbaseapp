import 'package:flutter/material.dart';
import 'package:solbase/screens/apphome/categories.dart';
import 'package:solbase/screens/apphome/comm/buttomtab.dart';
import 'package:solbase/screens/apphome/comm/comview.dart';
import 'package:solbase/screens/apphome/homepage.dart';
import 'package:solbase/shared/bottomnav.dart';
import 'package:solbase/shared/section_title.dart';

class CommunityHome extends StatelessWidget {
  const CommunityHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNarBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                  child: Container(
                    width: 145,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0XFF4838D1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.search,
                            size: 14,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Explore",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 2),
                  child: Container(
                    width: 145,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0XFFF1F1F1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.chat,
                            size: 14,
                            color: Color(0XFF4838D1),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Messaging",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0XFF4838D1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              width: 310,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [
                      Color(0xFF14103D),
                      Color(0xFF4838D1),
                    ],
                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.currency_bitcoin,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    Text(
                      "Get 100 Coins\n for your first activity",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SectionBoard(title: "For you"),
            ),
            const CommunityBuild(),
            const SizedBox(
              height: 5,
            ),
            const SectionBoard(title: "Interest Communities"),
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Genres(),
            ),
            const CommunityMBuild(),
          ],
        ),
      ),
    );
  }
}
