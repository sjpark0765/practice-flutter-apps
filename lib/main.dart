import 'package:flutter/material.dart';

void main() {
  // runApp(const ProviderApp01());
  runApp(const EmptyApp());
}

class EmptyApp extends StatelessWidget {
  const EmptyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext buildContext) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Empty APP1"),
        ),
      ),
    );
  }
}
