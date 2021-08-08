import 'dart:convert';
import 'package:http/http.dart' as http;

class UserProvider {
  Future<String> getToken({
    required String username,
    required String password,
  }) async {
    var form = <String, String>{
      'username': username,
      'password': password,
    };
    final String api =
        'https://trello.backend.tests.nekidaem.ru/api/v1/users/login/';
    return http.post(Uri.parse(api), body: form).then((response) {
      Map<String, dynamic> jsonData =
          json.decode(utf8.decode(response.bodyBytes));
      if (response.statusCode == 200) {
        final token = jsonData["token"] as String;
        return token;
      } else {
        final error =
            jsonData["non_field_errors"].map((value) => value).join() as String;
        return error;
      }
    });
  }
}
