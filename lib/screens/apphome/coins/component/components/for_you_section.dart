import 'package:flutter/cupertino.dart';

import 'package:solbase/screens/apphome/coins/component/components/title.dart';
import 'fy_item.dart';

class ForYouSection extends StatelessWidget {
  const ForYouSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleText(text: "For You"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                FYItem(
                  active: true,
                  icon: CupertinoIcons.book,
                  text: "FameApp\nNFT crypto",
                ),
                FYItem(
                  active: false,
                  icon: CupertinoIcons.map,
                  text: "Live \nScream",
                ),
                FYItem(
                  active: false,
                  icon: CupertinoIcons.text_bubble,
                  text: "Join \nCommunity",
                ),
                FYItem(
                  active: false,
                  icon: CupertinoIcons.book,
                  text: "Learn crypto ",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
