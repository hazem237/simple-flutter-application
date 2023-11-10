class Movie {
  final String title;
  final String type;
  final String rate;
  final String img;

  Movie({
    required this.title,
    required this.rate,
    required this.type,
    required this.img,
  });
}

List<Movie> movies = [
  Movie(
    title: "Friends",
    rate: '9.9',
    type: "Action",
    img:
        "https://i0.wp.com/cedars.cedarville.edu/wp/wp-content/uploads/2020/05/Parasite-scaled.jpg?fit=1657%2C2560&ssl=1",
  ),
  Movie(
    title: "Friends",
    rate: '9.9',
    type: "Action",
    img:
        "https://i0.wp.com/cedars.cedarville.edu/wp/wp-content/uploads/2020/05/Parasite-scaled.jpg?fit=1657%2C2560&ssl=1",
  ),
];
