class TrendingStreamModel {
  String userName;
  String userAvatar;
  String gameName;
  String thumbnail;
  String liveWatchingCount;

  TrendingStreamModel({
    required this.gameName,
    required this.thumbnail,
    required this.userAvatar,
    required this.userName,
    required this.liveWatchingCount,
  });
}

List<TrendingStreamModel> trendingStreams = [
  TrendingStreamModel(
    gameName: "BGMI",
    thumbnail: 'assets/game_streaming/images/bgmi.jpeg',
    userAvatar: 'assets/game_streaming/images/user1.jpeg',
    userName: 'LightYear Gaming',
    liveWatchingCount: "55k",
  ),
  TrendingStreamModel(
    gameName: "Valorant",
    thumbnail: 'assets/game_streaming/images/valo.jpg',
    userAvatar: 'assets/game_streaming/images/user2.jpg',
    userName: 'John Gaming',
    liveWatchingCount: "32.5k",
  ),
  TrendingStreamModel(
    gameName: "Free Fire",
    thumbnail: 'assets/game_streaming/images/ff.jpg',
    userAvatar: 'assets/game_streaming/images/user3.jpg',
    userName: 'Doe Gaming',
    liveWatchingCount: "10k",
  ),
];
