import 'package:flutter/material.dart';
import 'package:solbase/const/color.dart';

class BestSellerCard extends StatelessWidget {
  final String title;
  final String author;
  final String image;
  final String rating;
  final String listener;

  final VoidCallback press;
  const BestSellerCard(
      {Key? key,
      required this.title,
      required this.author,
      required this.image,
      required this.rating,
      required this.press,
      required this.listener})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      child: Scaffold(
        body: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 314,
              height: 144,
              decoration: BoxDecoration(
                border: Border.all(color: kPrimaryBColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage(image),
                      height: 120,
                      width: 120,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            title,
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            author,
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Image.asset(rating),
                        ),
                        Text(
                          listener,
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
