import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:solbase/screens/apphome/coins/metamask.dart';
import 'package:solbase/shared/bottomnav.dart';

class ImportWallet extends StatelessWidget {
  const ImportWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNarBar(),
      backgroundColor: const Color(0xfffff6f6f6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Import Wallet",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xfff2e2e5d)),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text("Select Wallet"),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 60,
              width: 315,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/binance.png"),
                    ),
                  ),
                  Text(
                    "Binance",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 60,
              width: 315,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage("assets/images/coin.png"),
                    ),
                  ),
                  Text(
                    "Coinbase",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => MetaMask()));
              },
              child: Container(
                height: 60,
                width: 315,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage("assets/images/meta.png"),
                      ),
                    ),
                    Text(
                      "Meta Mask",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
