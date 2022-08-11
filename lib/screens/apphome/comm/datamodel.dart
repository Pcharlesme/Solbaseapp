class ProductList {
  final String image;
  final String title;
  final String tag;
  final String author;

  ProductList({
    required this.tag,
    required this.image,
    required this.title,
    required this.author,
  });
}

List<ProductList> communityist_item = [
  ProductList(
    image: "assets/images/dom.png",
    title: "Blockchain",
    tag: "DEFI",
    author: "2,304 members",
  ),
  ProductList(
    image: "assets/images/dom2.png",
    title: "Crypto NFT",
    tag: "Finance",
    author: "474 members",
  ),
  ProductList(
    image: "assets/images/poster2.png",
    title: "Dao",
    tag: "Tech",
    author: "2,104 members",
  ),
];

List<ModelList> modellist_item = [
  ModelList(
    image: "assets/images/com.png",
    title: "Tech World",
    users: "2,304 members",
    tag: "Tech",
  ),
  ModelList(
    image: "assets/images/cod2.png",
    title: "Solana",
    users: "9,304 members",
    tag: "Crypto",
  ),
  ModelList(
    image: "assets/images/poster1.png",
    title: "Defi",
    tag: "Finance",
    users: "1,304 members",
  ),
  ModelList(
    image: "assets/images/poster.png",
    title: "Dapp",
    tag: "App",
    users: "9,304 members",
  )
];

class ModelList {
  final String image;
  final String title;
  final String tag;

  final String users;

  ModelList({
    required this.tag,
    required this.image,
    required this.title,
    required this.users,
  });
}
