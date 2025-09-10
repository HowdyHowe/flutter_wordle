class UserState {
  final int boxCount;
  UserState({required this.boxCount});

  // initial value
  factory UserState.initial() {
    return UserState(boxCount: 25);
  }

  // updating state immutably
  UserState copyWith({int? boxCount}) {
    return UserState(boxCount: boxCount ?? this.boxCount);
  }
}
