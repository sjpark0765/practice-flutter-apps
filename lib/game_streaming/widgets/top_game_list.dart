import 'package:flutter/material.dart';
import 'package:practice_flutter_apps/game_streaming/data/top_games_data.dart';
import 'package:practice_flutter_apps/game_streaming/widgets/top_game_card.dart';

class TopGameList extends StatelessWidget {
  const TopGameList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: topGames.length,
          itemBuilder: (context, index) {
            return Row(
              children: [TopGameCard(data: topGames[index])],
            );
            // return GestureDetector(
            //   onTap: () {},
            //   child: TopGameCard(data: topGames[index]),
            // );
          }),
    );
  }
}
