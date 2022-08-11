import 'package:flutter/material.dart';

import 'package:solbase/const/color.dart';

class ProductView extends StatelessWidget {
  final String title;
  final String author;
  final String image;
  final VoidCallback press;
  const ProductView(
      {Key? key,
      required this.title,
      required this.image,
      required this.press,
      required this.author})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFF3F5F7),
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    image,
                    height: 142,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: kTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            Text(
              author,
              style: const TextStyle(
                  color: kPrimaryBColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            Image.asset("assets/images/loadbar.png"),
          ],
        ),
      ),
    );
  }
}
