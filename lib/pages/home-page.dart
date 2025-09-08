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
          Positioned(
              bottom: 10,
              left: 10,
              child: Image.asset(
                "assets/images/logo.png",
                width: 50,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "WORDLE.",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
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
                  Button(
                      isIcon: true,
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
                          isIcon: true,
                          onPressed: () {
                            Navigator.pushNamed(context, "/info");
                          },
                          icon: Icons.info_rounded,
                          width: 70,
                          height: 70,
                          iconSize: 35,
                          round: false),
                      SizedBox(
                        width: 10,
                      ),
                      Button(
                          isIcon: true,
                          onPressed: () {
                            Navigator.pushNamed(context, "/setting");
                          },
                          icon: Icons.settings_rounded,
                          width: 70,
                          height: 70,
                          iconSize: 32,
                          round: false),
                      SizedBox(
                        width: 10,
                      ),
                      Button(
                          isIcon: true,
                          onPressed: () {
                            Navigator.pushNamed(context, "/test");
                          },
                          icon: Icons.expand_circle_down,
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
