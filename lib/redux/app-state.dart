import 'package:flutter_wordle_project/redux/user/user-state.dart';

class AppState {
  final UserState user;
  AppState({required this.user});

  factory AppState.initial() => AppState(user: UserState.initial());

}
