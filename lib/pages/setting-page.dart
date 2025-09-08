import 'package:flutter/material.dart';
import 'package:flutter_wordle_project/widgets/button.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int boxCount = 25;

  void changeBox(int box) {
    setState(() {
      boxCount = box;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Pengaturan",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Button(
                    isIcon: false,
                    text: "4",
                    width: 60,
                    height: 60,
                    iconSize: 30,
                    round: false,
                    onPressed: () => changeBox(20)),
                Button(
                    isIcon: false,
                    text: "5",
                    width: 60,
                    height: 60,
                    iconSize: 30,
                    round: false,
                    onPressed: () => changeBox(25)),
                Button(
                    isIcon: false,
                    text: "6",
                    width: 60,
                    height: 60,
                    iconSize: 30,
                    round: false,
                    onPressed: () => changeBox(30)),
                Button(
                    isIcon: false,
                    text: "7",
                    width: 60,
                    height: 60,
                    iconSize: 30,
                    round: false,
                    onPressed: () => changeBox(35)),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
