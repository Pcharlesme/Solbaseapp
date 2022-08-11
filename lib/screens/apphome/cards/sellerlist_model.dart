class Sellerlist {
  final String title;
  final String author;
  final String image;
  final String rating;
  final String listeners;

  Sellerlist({
    required this.listeners,
    required this.title,
    required this.author,
    required this.image,
    required this.rating,
  });
}

List<Sellerlist> sellercard_list = [
  Sellerlist(
      title: "Light Mage",
      author: "Laurie Forest",
      image: "assets/images/seller_banner.png",
      rating: "assets/images/rate.png",
      listeners: "1000+ Listeners"),
  Sellerlist(
      title: "Sorcerer's Stone",
      author: "J.K Rowling",
      image: "assets/images/seller_banner1.png",
      listeners: "1000+ Listeners",
      rating: "assets/images/rate.png"),
  Sellerlist(
      title: "Light Mage",
      author: "Laurie Forest",
      image: "assets/images/seller_banner2.png",
      listeners: "1000+ Listeners",
      rating: "assets/images/rate.png"),
];
