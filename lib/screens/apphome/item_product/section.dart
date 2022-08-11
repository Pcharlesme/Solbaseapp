import 'package:flutter/material.dart';
import 'package:solbase/const/color.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: const TextStyle(
              fontSize: 18,
              color: kTextColor,
              fontWeight: FontWeight.w500,
            )),
        TextButton(
          onPressed: () {},
          child: const Text(
            "See more",
            style: TextStyle(
              color: kPrimaryBColor,
            ),
          ),
        )
      ],
    );
  }
}
