// ignore_for_file: library_private_types_in_public_api

import "package:flutter/material.dart";
import "package:practice_flutter_apps/features/user_auth/presentation/pages/login_page.dart";

class SplashScreen extends StatefulWidget {
  final Widget? child;
  const SplashScreen({Key? key, this.child}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Firebase Auth/GetX Example",
          style: TextStyle(color: Colors.blue, fontSize: 24.0),
        ),
      ),
    );
  }
}
