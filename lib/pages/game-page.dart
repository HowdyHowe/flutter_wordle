import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_wordle_project/main.dart';
import 'package:flutter_wordle_project/redux/app-state.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  void initState() {
    super.initState();
  }

  // int boxCount = 25;

  // void changeBox(int box) {
  //   setState(() {
  //     boxCount = box;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoreConnector<AppState, ViewModel>(
        converter: (store) => ViewModel(boxCount: store.state.user.boxCount),
        builder: (context, vm) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Center(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Button(
            //           isIcon: false,
            //           text: "4",
            //           width: 60,
            //           height: 60,
            //           iconSize: 30,
            //           round: false,
            //           onPressed: () => changeBox(20)),
            //       Button(
            //           isIcon: false,
            //           text: "5",
            //           width: 60,
            //           height: 60,
            //           iconSize: 30,
            //           round: false,
            //           onPressed: () => changeBox(25)),
            //       Button(
            //           isIcon: false,
            //           text: "6",
            //           width: 60,
            //           height: 60,
            //           iconSize: 30,
            //           round: false,
            //           onPressed: () => changeBox(30)),
            //       Button(
            //           isIcon: false,
            //           text: "7",
            //           width: 60,
            //           height: 60,
            //           iconSize: 30,
            //           round: false,
            //           onPressed: () => changeBox(35)),
            //     ],
            //   ),
            // ),
            Center(
              child: Container(
                width: vm.boxCount * 10,
                margin: EdgeInsets.all(10),
                child: GridView.builder(
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 50,
                      childAspectRatio: 1,
                    ),
                    itemCount: (vm.boxCount + vm.boxCount / 5).toInt(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 2, color: Color(0xFFd1d1d1)),
                            borderRadius: BorderRadius.circular(7)),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
