import 'package:flutter/material.dart';
import 'package:flutter_wordle_project/pages/home-page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage()
        // "/game"
      },
    );
  }
}
