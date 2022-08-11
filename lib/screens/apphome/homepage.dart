import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solbase/screens/apphome/cards/card.dart';
import 'package:solbase/screens/apphome/categories.dart';
import 'package:solbase/screens/apphome/coins/import_wallet.dart';
import 'package:solbase/screens/apphome/coins/wallet_card.dart';

import 'package:solbase/screens/proitem/product.dart';
import 'package:solbase/screens/proitem/productdetails.dart';
import 'package:solbase/screens/proitem/productlist_model.dart';
import 'package:solbase/shared/appbutton.dart';
import 'package:solbase/shared/bottomnav.dart';
import 'package:solbase/shared/section_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
      borderSide: BorderSide.none,
    );
    return Scaffold(
      bottomNavigationBar: const BottomNarBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Wallets(),
                ),
                SectionBoard(title: "Audio Books Continue Listening"),
                ProductBuild(),
                SizedBox(
                  height: 5,
                ),
                SectionBoard(title: "Music Continue Listening"),
                ProductMBuild(),
                SectionBoard(title: "Best Seller"),
                SellerBuildCard()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Product
class ProductBuild extends StatelessWidget {
  const ProductBuild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          product_list.length,
          (index) => ProductView(
              image: product_list[index].image,
              title: product_list[index].title,
              author: product_list[index].author,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(product: product_list[index])),
                );
              }),
        ),
      ),
    );
  }
}

class ProductMBuild extends StatelessWidget {
  const ProductMBuild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          product_list2.length,
          (index) => ProductView(
              image: product_list2[index].image,
              title: product_list2[index].title,
              author: product_list2[index].author,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(product: product_list2[index])),
                );
              }),
        ),
      ),
    );
  }
}
