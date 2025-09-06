import 'package:flutter/material.dart';
import 'package:flutter_wordle_project/widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        children: [
          Positioned(bottom: 20, left: 20, child: Text("ini contoh text")),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "WORDLE.",
                style: TextStyle(
                    fontFamily: "Fredoka",
                    fontSize: 50,
                    fontWeight: FontWeight.w600),
              ),
              // Container(
              //   width: 150,
              //   height: 70,
              //   decoration: BoxDecoration(
              //       color: Color(0xFFdfe2ff),
              //       borderRadius: BorderRadius.circular(15)),
              //   child: Center(
              //       child: Text(
              //     "Mulai",
              //     style: TextStyle(
              //         fontFamily: "Fredoka",
              //         fontSize: 20,
              //         fontWeight: FontWeight.w600),
              //   )),
              // ),
              Column(
                children: [
                  // Container(
                  //     width: 100,
                  //     height: 100,
                  //     decoration: BoxDecoration(
                  //         color: Color(0xFFdfe2ff), shape: BoxShape.circle),
                  //     child: Center(
                  //         child: Icon(
                  //       Icons.play_arrow_rounded,
                  //       size: 60,
                  //     ))),
                  Button(
                      onPressed: () {
                        Navigator.pushNamed(context, "/game");
                      },
                      icon: Icons.play_arrow_rounded,
                      width: 100,
                      height: 100,
                      iconSize: 60,
                      round: true),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Button(
                          onPressed: () {},
                          icon: Icons.info_rounded,
                          width: 70,
                          height: 70,
                          iconSize: 35,
                          round: false),
                      SizedBox(
                        width: 10,
                      ),
                      Button(
                          onPressed: () {},
                          icon: Icons.settings_rounded,
                          width: 70,
                          height: 70,
                          iconSize: 32,
                          round: false)
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ));
  }
}
