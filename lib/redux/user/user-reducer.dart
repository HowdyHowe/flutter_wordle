import 'package:flutter_wordle_project/redux/user/user-action.dart';
import 'package:flutter_wordle_project/redux/user/user-state.dart';

UserState useReducer(UserState state, dynamic action) {
  if (action is SetBoxCount) {
    return state.copyWith(boxCount: action.boxCount);
  }

  if (action is ResetBoxCount) {
    return UserState.initial();
  }

  return state;
}
