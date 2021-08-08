abstract class UserState {}

class UserLoadedState extends UserState {
  String token;

  UserLoadedState({required this.token}) : assert(token != null);
}

class UserEmptyState extends UserState {
  String errors;

  UserEmptyState({required this.errors}) : assert(errors != null);
}
