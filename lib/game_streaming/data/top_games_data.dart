class TopGames {
  String name;
  String thumbnail;
  String followers;
  String type1;
  String type2;
  String viewers;

  TopGames({
    required this.name,
    required this.thumbnail,
    required this.followers,
    required this.type1,
    required this.type2,
    required this.viewers,
  });
}

List<TopGames> topGames = [
  TopGames(
    name: "VALORANT",
    thumbnail: 'assets/game_streaming/images/valo_logo.jpg',
    followers: "10.5M",
    viewers: "320k",
    type1: "Shooter",
    type2: "FPS",
  ),
  TopGames(
    name: "FREEFIRE",
    thumbnail: 'assets/game_streaming/images/ff_logo.jpg',
    followers: "10.5M",
    viewers: "89k",
    type1: "Shooter",
    type2: "FPS",
  ),
  TopGames(
    name: "BGMI",
    thumbnail: 'assets/game_streaming/images/bgmi_logo.jpg',
    followers: "19.5M",
    viewers: "221k",
    type1: "Shooter",
    type2: "FPS",
  ),
  TopGames(
    name: "FORTNITE",
    thumbnail: 'assets/game_streaming/images/fortnite_logo.jpg',
    followers: "10.5M",
    viewers: "121k",
    type1: "Shooter",
    type2: "FPS",
  ),
];
