// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.blue,
        notchMargin: 6.0,
        elevation: 7.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 50,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            color: Colors.white,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 2 - 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.home,
                      color: Color(0xFFEF7532),
                    ),
                    Icon(
                      Icons.person_outline,
                      color: Color(0XFF676E79),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 2 - 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.search,
                      color: Color(0xFFEF7532),
                    ),
                    Icon(
                      Icons.shopping_basket,
                      color: Color.fromARGB(255, 28, 36, 48),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
