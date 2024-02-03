class TopClipModel {
  String title;
  String thumbnail;
  String userName;
  String userAvatar;

  TopClipModel({
    required this.thumbnail,
    required this.title,
    required this.userAvatar,
    required this.userName,
  });
}

List<TopClipModel> topClips = [
  TopClipModel(
    title: "Cluth Montage 🎮",
    thumbnail: 'assets/game_streaming/images/valo.jpg',
    userAvatar: 'assets/game_streaming/images/user2.jpg',
    userName: 'John Gaming',
  ),
  TopClipModel(
    thumbnail: 'assets/game_streaming/images/bgmi.jpeg',
    userAvatar: 'assets/game_streaming/images/user1.jpeg',
    userName: 'LightYear Gaming',
    title: "1v4 clutch in T1 Scrims 🏆",
  ),
  TopClipModel(
    thumbnail: 'assets/game_streaming/images/ff.jpg',
    userAvatar: 'assets/game_streaming/images/user3.jpg',
    userName: 'Doe Gaming',
    title: "God Level gameplay 🥇",
  ),
];
