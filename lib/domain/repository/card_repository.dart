import 'package:kanban_test_task/domain/api_clients/card_provider.dart';
import 'package:kanban_test_task/domain/entity/card_model.dart';

class CardRepository {
  CardProvider _cardsProvider = CardProvider();

  Future<List<CardModel>> getAllCards(String token) =>
      _cardsProvider.getCard(token: token);
}
