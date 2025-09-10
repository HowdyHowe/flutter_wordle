import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_wordle_project/pages/game-page.dart';
import 'package:flutter_wordle_project/pages/home-page.dart';
import 'package:flutter_wordle_project/pages/info-page.dart';
import 'package:flutter_wordle_project/pages/setting-page.dart';
import 'package:flutter_wordle_project/pages/test.dart';
import 'package:flutter_wordle_project/redux/app-reducer.dart';
import 'package:flutter_wordle_project/redux/app-state.dart';
import 'package:redux/redux.dart';

void main() {
  final store = Store<AppState>(appReducer, initialState: AppState.initial());

  runApp(MainApp(store: store));
}

class MainApp extends StatelessWidget {
  final Store<AppState> store;
  MainApp({
    super.key,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData(
            fontFamily: "Fredoka",
            pageTransitionsTheme: PageTransitionsTheme(builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            })),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => HomePage(),
          "/game": (context) => GamePage(),
          "/setting": (context) => SettingPage(),
          "/info": (context) => InfoPage(),
          // "/test": (context) => CounterPage(),
        },
      ),
    );
  }
}

class ViewModel {
  final int boxCount;
  final Function(int)? setBoxCount;

  ViewModel({required this.boxCount, this.setBoxCount});
}
