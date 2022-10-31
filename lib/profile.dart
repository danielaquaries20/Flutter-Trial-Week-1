class Profile {
  final String name;
  final String description;
  final String icon;
  final String photo;
  final String aboutUs;

  Profile({
    required this.name,
    required this.description,
    this.icon = "assets/images/ic_crocodic.jpg",
    this.photo = "assets/images/ic_photo_tmi.jpg",
    required this.aboutUs,
  });
}
