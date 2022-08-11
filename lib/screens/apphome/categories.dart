import 'package:flutter/material.dart';
import 'package:solbase/const/color.dart';

class GeneCard extends StatelessWidget {
  final String genre;
  const GeneCard({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 16),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: kPrimaryBColor,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(genre),
    );
  }
}

class Genres extends StatelessWidget {
  const Genres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "HipHop",
      "Comedy",
      "Crime",
      "Drama",
      "Jazz",
      "Business",
      "Actions",
      "Blues",
      "Raps",
      "Education",
      "Story",
      "Inspiration",
    ];
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 36,
      decoration: BoxDecoration(color: Color(0xffff5f5fa)),
      child: GestureDetector(
        onTap: () {},
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) => GeneCard(genre: genres[index]),
        ),
      ),
    );
  }
}
