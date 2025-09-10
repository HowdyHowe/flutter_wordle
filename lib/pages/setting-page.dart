// import 'package:flutter/material.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:flutter_wordle_project/main.dart';
// import 'package:flutter_wordle_project/redux/app-state.dart';
// import 'package:flutter_wordle_project/redux/user/user-action.dart';
// import 'package:flutter_wordle_project/widgets/button.dart';

// class SettingPage extends StatefulWidget {
//   const SettingPage({super.key});

//   @override
//   State<SettingPage> createState() => _SettingPageState();
// }

// class _SettingPageState extends State<SettingPage> {
//   // int boxCount = 25;

//   // void changeBox(int box) {
//   //   setState(() {
//   //     boxCount = box;
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: StoreConnector<AppState, ViewModel>(
//         converter: (store) => ViewModel(
//           boxCount: store.state.user.boxCount,
//           setBoxCount: (number) => store.dispatch(SetBoxCount(number)),
//         ),
//         builder: (context, vm) => Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               "Pengaturan",
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
//             ),
//             Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Button(
//                       isIcon: false,
//                       text: "4",
//                       width: 60,
//                       height: 60,
//                       iconSize: 30,
//                       round: false,
//                       onPressed: () => vm.setBoxCount(20)),
//                   Button(
//                       isIcon: false,
//                       text: "5",
//                       width: 60,
//                       height: 60,
//                       iconSize: 30,
//                       round: false,
//                       onPressed: () => vm.setBoxCount(25)),
//                   Button(
//                       isIcon: false,
//                       text: "6",
//                       width: 60,
//                       height: 60,
//                       iconSize: 30,
//                       round: false,
//                       onPressed: () => vm.setBoxCount(30)),
//                   Button(
//                       isIcon: false,
//                       text: "7",
//                       width: 60,
//                       height: 60,
//                       iconSize: 30,
//                       round: false,
//                       onPressed: () => vm.setBoxCount(35)),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_wordle_project/main.dart';
import 'package:flutter_wordle_project/redux/app-state.dart';
import 'package:flutter_wordle_project/redux/user/user-action.dart';
import 'package:flutter_wordle_project/widgets/button.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    // final store = StoreProvider.of<AppState>(context, listen: false);

    return Scaffold(
        body: Center(
      child: StoreConnector<AppState, ViewModel>(
        converter: (store) => ViewModel(
            boxCount: store.state.user.boxCount,
            setBoxCount: (number) => store.dispatch(SetBoxCount(number))),
        builder: (context, vm) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Pengaturan",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Button(
                    isActive: vm.boxCount == 20 ? true : false,
                    isIcon: false,
                    text: "4",
                    width: 60,
                    height: 60,
                    iconSize: 30,
                    round: false,
                    onPressed: () => vm.setBoxCount(20),
                  ),
                  Button(
                    isActive: vm.boxCount == 25 ? true : false,
                    isIcon: false,
                    text: "5",
                    width: 60,
                    height: 60,
                    iconSize: 30,
                    round: false,
                    onPressed: () => vm.setBoxCount(25),
                  ),
                  Button(
                      isActive: vm.boxCount == 30 ? true : false,
                      isIcon: false,
                      text: "6",
                      width: 60,
                      height: 60,
                      iconSize: 30,
                      round: false,
                      onPressed: () => vm.setBoxCount(30)),
                  Button(
                      isActive: vm.boxCount == 35 ? true : false,
                      isIcon: false,
                      text: "7",
                      width: 60,
                      height: 60,
                      iconSize: 30,
                      round: false,
                      onPressed: () => vm.setBoxCount(35))
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
