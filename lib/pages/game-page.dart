import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.purple, borderRadius: BorderRadius.circular(15)),
            child: Center(child: Text("Kembali")),
          ),
        ),
      ),
    );
  }
}
