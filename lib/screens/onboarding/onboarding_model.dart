class UnbordingContent {
  final String? image;
  final String? title;
  final String? description;

  UnbordingContent({this.image, this.title, this.description});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Get Inspired',
      image: 'assets/images/onboard.png',
      description:
          "A lounge for everyone around the world to connect and share their love of skateboarding. "),
  UnbordingContent(
      title: 'Meet the right one',
      image: 'assets/images/onboard1.png',
      description:
          "A lounge for everyone around the world to connect and share their love of skateboarding. "),
  UnbordingContent(
      title: 'Reward surprises',
      image: 'assets/images/onboard2.png',
      description:
          "A lounge for everyone around the world to connect and share their love of skateboarding. "),
];
