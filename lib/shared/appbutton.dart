import 'package:flutter/material.dart';

import '../const/color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback press;

  const CustomButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
        child: Container(
          height: 56,
          decoration: BoxDecoration(
            color: kPrimaryBColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomSecondButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  const CustomSecondButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
        child: Container(
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: kPrimaryBColor),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: kPrimaryBColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
