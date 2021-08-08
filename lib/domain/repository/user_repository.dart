import 'package:kanban_test_task/domain/api_clients/user_provider.dart';

class UserRepository {
  UserProvider _userProvider = UserProvider();

  Future<String> getDataToken(username, password) =>
      _userProvider.getToken(username: username, password: password);
}
