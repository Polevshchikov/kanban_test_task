import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:kanban_test_task/domain/entity/card_model.dart';

class CardProvider {
  Future<List<CardModel>> getCard({required String token}) async {
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'JWT $token'
    };

    final String api = 'https://trello.backend.tests.nekidaem.ru/api/v1/cards/';
    return http.get(Uri.parse(api), headers: headers).then((response) {
      if (response.statusCode == 200) {
        List<dynamic> jsonData =
            json.decode(utf8.decode(response.bodyBytes)).toList();

        return jsonData.map((card) => CardModel.fromJson(card)).toList();
      }
      // else if (response.statusCode == 401) {
      //   обработать ошибку, можно отправлять не обновление токена
      // }

      return [json.decode(utf8.decode(response.bodyBytes)).join()];
    });
  }
}
