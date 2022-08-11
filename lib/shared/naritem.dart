import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solbase/const/color.dart';

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final VoidCallback press;
  final bool isActive;
  const BottomNavItem({
    Key? key,
    required this.svgScr,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            svgScr,
            color: isActive ? kActiveIconColor : kIconColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
