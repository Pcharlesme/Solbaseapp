import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletItem extends StatelessWidget {
  final Color color;
  const WalletItem({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                colors: [color, color.withOpacity(0.8)]),
            color: color,
            borderRadius: BorderRadius.circular(15)),
        width: 280,
        height: 140,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "My Wallet",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    r"$" "1681.30",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        CupertinoIcons.archivebox_fill,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Deposit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        CupertinoIcons.tray_arrow_down_fill,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "History",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        CupertinoIcons.link,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "More",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Wallets extends StatelessWidget {
  const Wallets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            WalletItem(
              color: Color(0xff177DFF),
            ),
            WalletItem(
              color: Color(0xffFC9B35),
            ),
            WalletItem(
              color: Color.fromARGB(255, 182, 23, 255),
            ),
          ],
        ),
      ),
    );
  }
}
