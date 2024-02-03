import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(8),
          splashColor: Colors.lightBlue,
          child: Ink(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).hintColor,
            ),
            child: const Icon(
              Icons.notes_outlined,
              color: Colors.white,
            ),
          ),
        ));
  }
}
