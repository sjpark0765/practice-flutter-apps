import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Hello World!"),
      ),
      body: const Center(
        child: Text(
          "Hello World!",
          style: TextStyle(fontSize: 30),
        ),
      ),
    ),
  ));
}
