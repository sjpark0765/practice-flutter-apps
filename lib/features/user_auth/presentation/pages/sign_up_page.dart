// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Sign Up Page",
          style: TextStyle(color: Colors.blue, fontSize: 24.0),
        ),
      ),
    );
  }
}
