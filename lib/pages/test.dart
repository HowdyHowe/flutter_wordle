// lib/screens/counter_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_wordle_project/store/app-state.dart';
import 'package:flutter_wordle_project/store/counter/counter-action.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Redux Counter")),
      body: Center(
        child: StoreConnector<AppState, int>(
          converter: (store) => store.state.counter.value,
          builder: (context, counter) => Text(
            "Counter: $counter",
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          StoreConnector<AppState, VoidCallback>(
            converter: (store) => () => store.dispatch(IncrementAction()),
            builder: (context, callback) => FloatingActionButton(
              heroTag: "inc",
              onPressed: callback,
              child: const Icon(Icons.add),
            ),
          ),
          const SizedBox(height: 10),
          StoreConnector<AppState, VoidCallback>(
            converter: (store) => () => store.dispatch(DecrementAction()),
            builder: (context, callback) => FloatingActionButton(
              heroTag: "dec",
              onPressed: callback,
              child: const Icon(Icons.remove),
            ),
          ),
        ],
      ),
    );
  }
}
