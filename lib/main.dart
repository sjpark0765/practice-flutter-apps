import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:practice_flutter_apps/firebase_options.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MessagerApp());
}

class MessagerApp extends StatelessWidget {
  const MessagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Scaffold(
          body: SafeArea(
            child: Center(
              child: Text(
                "Messager App",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ));
  }
}
