import 'package:flutter/material.dart';
import 'package:practice_flutter_apps/game_streaming/data/top_games_data.dart';

class TopGameCard extends StatelessWidget {
  final TopGames data;
  const TopGameCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(data.thumbnail))),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
