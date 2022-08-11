import 'package:flutter/material.dart';
import 'package:solbase/screens/apphome/item_product/product.dart';
import 'package:solbase/screens/apphome/item_product/product_model.dart';
import 'package:solbase/screens/apphome/item_product/section.dart';

class TrendingItem extends StatelessWidget {
  const TrendingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        trendinglist_item.length,
        (index) => ItemProduct(
            image: trendinglist_item[index].image,
            title: trendinglist_item[index].title,
            author: trendinglist_item[index].author,
            press: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => DetailsScreen(
              //             product: productlist_item[index],
              //           )),
              // );
            }),
      ),
    );
  }
}

class TrendingBox extends StatelessWidget {
  const TrendingBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SectionTitle(title: "Trending"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    2,
                    (index) => ItemProduct(
                        image: "assets/images/poster1",
                        title: "trendinglist_item[index].title",
                        author: "trendinglist_item[index].author",
                        press: () {})),
              ),
            ),
          )
        ],
      ),
    );
  }
}
