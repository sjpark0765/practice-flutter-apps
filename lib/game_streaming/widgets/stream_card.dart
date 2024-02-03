import 'package:flutter/material.dart';
import 'package:practice_flutter_apps/game_streaming/data/trending_data.dart';

class StreamCard extends StatelessWidget {
  final TrendingStreamModel data;
  const StreamCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Stack(
        children: [
          Container(
            height: 180,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.yellow,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  data.thumbnail,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: 25,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.red,
              ),
              child: Center(
                  child: Text(
                'LIVE',
                style: Theme.of(context).textTheme.bodySmall,
              )),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black,
              ),
              child: Center(
                child: Row(
                  children: [
                    const Icon(
                      Icons.circle,
                      color: Colors.red,
                      size: 10,
                    ),
                    Text(' ${data.liveWatchingCount} watching',
                        style: Theme.of(context).textTheme.titleMedium),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CircleAvatar(
            backgroundImage: AssetImage(data.userAvatar),
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.userName,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                data.gameName,
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          )
        ]),
      )
    ]);
  }
}
