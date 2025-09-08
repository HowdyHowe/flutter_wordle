// lib/redux/app_state.dart
import 'package:flutter_wordle_project/store/counter/counter-state.dart';

class AppState {
  final CounterState counter;

  AppState({required this.counter});

  factory AppState.initial() {
    return AppState(counter: CounterState.initial());
  }
}
