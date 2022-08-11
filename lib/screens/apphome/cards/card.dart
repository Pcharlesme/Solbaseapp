import 'package:flutter/material.dart';
import 'package:solbase/const/color.dart';
import 'package:solbase/screens/apphome/cards/seller_card.dart';
import 'package:solbase/screens/apphome/cards/sellerlist_model.dart';

class SellerBuildCard extends StatelessWidget {
  const SellerBuildCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          sellercard_list.length,
          (index) => Container(
              height: 150,
              width: 320,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black38,
              )),
              child: BestSellerCard(
                title: sellercard_list[index].title,
                author: sellercard_list[index].author,
                image: sellercard_list[index].image,
                rating: sellercard_list[index].rating,
                press: () {},
                listener: sellercard_list[index].listeners,
              )),
        ),
      ),
    );
  }
}
