import 'package:flutter/material.dart';
import 'package:practice_flutter_apps/game_streaming/constants/constants.dart';
import 'package:practice_flutter_apps/game_streaming/widgets/action_button.dart';
import 'package:practice_flutter_apps/game_streaming/widgets/category_list.dart';
import 'package:practice_flutter_apps/game_streaming/widgets/header.dart';
import 'package:practice_flutter_apps/game_streaming/widgets/trendind_list.dart';
import 'package:practice_flutter_apps/game_streaming/widgets/top_game_list.dart';
import 'package:practice_flutter_apps/game_streaming/widgets/top_clip_list.dart';

class GameStreamingScreen extends StatefulWidget {
  const GameStreamingScreen({Key? key}) : super(key: key);

  @override
  _GameStreamingScreenState createState() => _GameStreamingScreenState();
}

class _GameStreamingScreenState extends State<GameStreamingScreen> {
  final List<String> _categories = [
    "Shooter",
    "Arcade",
    "Strategy",
    "Racing",
    "Action",
    "Simulation"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          leadingWidth: 250,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://via.placeholder.com/150"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Hi, John",
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
          ),
          actions: const [
            ActionButton(),
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Header(title: "Categories"),
                CategoryListView(categories: _categories),
                const SizedBox(
                  height: 10,
                ),
                const Header(
                  title: "Trending Streams",
                ),
                const TrendindListView(),
                const Header(
                  title: "Top Games",
                ),
                const TopGameList(),
                const Header(
                  title: "Top Clips",
                ),
                const TopClipList(),
              ],
            ),
          ),
        ));
  }
}
