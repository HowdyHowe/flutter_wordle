// lib/redux/counter/counter_state.dart
class CounterState {
  final int value;

  CounterState({required this.value});

  factory CounterState.initial() {
    return CounterState(value: 0);
  }
}
