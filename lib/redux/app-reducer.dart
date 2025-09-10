import 'package:flutter_wordle_project/redux/app-state.dart';
import 'package:flutter_wordle_project/redux/user/user-reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(user: useReducer(state.user, action));
}
