import 'package:flutter/material.dart';
import 'package:solbase/const/color.dart';
import 'package:solbase/screens/proitem/productlist_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/maskgal.png"),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 58),
            child: Center(
              child: Image.asset(
                product.image,
                height: MediaQuery.of(context).size.height * 0.35,
                width: 260,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            product.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("assets/minbut.png"),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "2",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset("assets/addnut.png"),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(12, 16 * 1, 12, 12),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        "James",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      "Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine..",
                    ),
                  ),
                  Center(
                    // ignore: avoid_unnecessary_containers
                    child: Container(
                      child: Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: const [
                          // ProductBox(
                          //     title: "100%",
                          //     subtitle: "Organic",
                          //     icons: "assets/apple.png"),
                          // ProductBox(
                          //     title: "1 Year",
                          //     subtitle: "Expiration",
                          //     icons: "assets/calen.png"),
                          // ProductBox(
                          //     title: "4.8(250)",
                          //     subtitle: "Reviews",
                          //     icons: "assets/star.png"),
                          // ProductBox(
                          //     title: "80 kcal",
                          //     subtitle: "100 Gram",
                          //     icons: "assets/drop.png"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Center(
                    child: SizedBox(
                      width: 260,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          // //       builder: (context) => const CartPage()),
                          // );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: kPrimaryBColor,
                            shape: const StadiumBorder()),
                        child: const Text("Add to Cart"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
