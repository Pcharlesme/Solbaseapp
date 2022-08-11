import 'package:flutter/material.dart';

class ButtonTab extends StatelessWidget {
  final String icon;
  final String text;
  const ButtonTab({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 145,
      decoration: BoxDecoration(
        color: Color(0xff4838d1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(Icons.abc_rounded),
          SizedBox(
            width: 6,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
