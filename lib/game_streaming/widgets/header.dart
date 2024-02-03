import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: Theme.of(context).textTheme.displayLarge),
            Text("See all", style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
