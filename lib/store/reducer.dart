// lib/redux/reducers.dart
import 'package:flutter_wordle_project/store/app-state.dart';
import 'package:flutter_wordle_project/store/counter/counter-reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    counter: counterReducer(state.counter, action),
  );
}
