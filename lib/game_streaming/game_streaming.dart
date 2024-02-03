import 'package:flutter/material.dart';
import 'package:practice_flutter_apps/game_streaming/constants/constants.dart';
import 'package:practice_flutter_apps/game_streaming/screens/game_streaming_screen.dart';

class GameStreamingApp extends StatelessWidget {
  const GameStreamingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Streaming',
      theme: ThemeData(
          brightness: Brightness.dark,
          hintColor: const Color(0xffEEB76B),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: kPrimaryColor,
          ),
          textTheme: const TextTheme(
              titleLarge: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
              displayLarge: TextStyle(
                  color: Color(0xff707ba1),
                  fontFamily: 'Poppins',
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
              displaySmall: TextStyle(
                  color: Color(0xff707ba1),
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
              headlineMedium: TextStyle(
                  color: Color(0xff707ba1),
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
              bodySmall: TextStyle(
                  color: Color(0xff707ba1),
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
              titleMedium: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 12,
              ))),
      home: const GameStreamingScreen(),
    );
  }
}
