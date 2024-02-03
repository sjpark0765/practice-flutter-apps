import 'package:flutter/material.dart';
import 'package:practice_flutter_apps/game_streaming/data/top_clip_data.dart';
import 'package:practice_flutter_apps/game_streaming/widgets/top_clip_card.dart';

class TopClipList extends StatelessWidget {
  const TopClipList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: topClips.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                TopClipCard(data: topClips[index]),
                const SizedBox(width: 20)
              ],
            );
          }),
    );
  }
}
