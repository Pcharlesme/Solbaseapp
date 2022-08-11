import 'package:flutter/material.dart';
import 'package:solbase/screens/apphome/comm/datamodel.dart';
import 'package:solbase/screens/proitem/productdetails.dart';

class CommunityView extends StatelessWidget {
  final String title, tag;
  final String author;
  final String image;

  final VoidCallback press;
  const CommunityView(
      {Key? key,
      required this.title,
      required this.author,
      required this.tag,
      required this.image,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 180,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                height: 100,
                width: 160,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ),
            Text(
              author,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
            Container(
              height: 22,
              decoration: BoxDecoration(
                color: Color(0xfffEFECFE),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  tag,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Color.fromARGB(255, 26, 3, 156),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CommunityBuild extends StatelessWidget {
  const CommunityBuild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          communityist_item.length,
          (index) => CommunityView(
              image: communityist_item[index].image,
              title: communityist_item[index].title,
              author: communityist_item[index].author,
              tag: communityist_item[index].tag,
              press: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) =>
                //           DetailsScreen(product: communityist_item[index])),
                // );
              }),
        ),
      ),
    );
  }
}

class CommunityMBuild extends StatelessWidget {
  const CommunityMBuild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          modellist_item.length,
          (index) => CommunityView(
              image: modellist_item[index].image,
              title: modellist_item[index].title,
              author: modellist_item[index].users,
              tag: modellist_item[index].tag,
              press: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) =>
                //           DetailsScreen(product: communityist_item[index])),
                // );
              }),
        ),
      ),
    );
  }
}
