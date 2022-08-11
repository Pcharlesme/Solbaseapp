import 'package:flutter/material.dart';
import 'package:solbase/screens/apphome/item_product/product.dart';
import 'package:solbase/screens/apphome/item_product/product_model.dart';
import 'package:solbase/screens/apphome/item_product/section.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
            padding: EdgeInsets.all(10.0),
            child: SectionTitle(title: "New Releases")),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              productlist_item.length,
              (index) => ItemProduct(
                  image: productlist_item[index].image,
                  title: productlist_item[index].title,
                  author: productlist_item[index].author,
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
          ),
        )
      ],
    );
  }
}
