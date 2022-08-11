import 'package:flutter/material.dart';
import 'package:solbase/const/color.dart';

class SectionBoard extends StatelessWidget {
  final String title;
  const SectionBoard({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: kTextColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Image(
            image: AssetImage("assets/facefood.png"),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "See more",
                  style: TextStyle(
                      color: kPrimaryBColor, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
