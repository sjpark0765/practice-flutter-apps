import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:practice_flutter_apps/features/app/splash_screen/splash_screen.dart';
import 'package:practice_flutter_apps/features/user_auth/presentation/pages/home_page.dart';
import 'package:practice_flutter_apps/features/user_auth/presentation/pages/login_page.dart';
import 'package:practice_flutter_apps/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:practice_flutter_apps/firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const EmptyApp());
}

class EmptyApp extends StatelessWidget {
  const EmptyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: "Firebase Auth/GetX Example",
      routes: {
        "/": (context) => const SplashScreen(child: LoginPage()),
        "/login": (context) => const LoginPage(),
        "/signup": (context) => const SignUpPage(),
        "/home": (context) => const HomePage(),
      },
    );
  }
}
