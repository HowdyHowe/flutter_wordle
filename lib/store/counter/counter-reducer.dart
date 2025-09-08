// lib/redux/counter/counter_reducer.dart
import 'package:flutter_wordle_project/store/counter/counter-action.dart';
import 'package:flutter_wordle_project/store/counter/counter-state.dart';

CounterState counterReducer(CounterState state, dynamic action) {
  if (action is IncrementAction) {
    return CounterState(value: state.value + 1);
  } else if (action is DecrementAction) {
    return CounterState(value: state.value - 1);
  }
  return state;
}
