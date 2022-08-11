import 'package:flutter/material.dart';

import '../const/color.dart';

class SuggestionBox extends StatelessWidget {
  final String text;
  const SuggestionBox({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: kPrimaryBColor),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: kPrimaryBColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
