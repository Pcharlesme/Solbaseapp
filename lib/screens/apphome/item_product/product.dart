import 'package:flutter/material.dart';
import 'package:solbase/const/color.dart';
import 'package:solbase/screens/apphome/item_product/product_model.dart';

class ItemProduct extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final VoidCallback press;
  const ItemProduct({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: press,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 160,
                    width: 160,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image(
                        image: AssetImage(image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    author,
                    style: const TextStyle(
                      color: kPrimaryBColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
