abstract class UserState {}

class UserLoadedState extends UserState {
  String token;

  UserLoadedState({required this.token});
}

class UserEmptyState extends UserState {
  String errors;

  UserEmptyState({required this.errors});
}
