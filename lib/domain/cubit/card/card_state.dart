import 'package:kanban_test_task/domain/entity/card_model.dart';

abstract class CardState {}

class CardLoadingState extends CardState {}

class CardLoadedState extends CardState {
  List<CardModel> loadedCard;
  List<CardModel> onHoldCard;
  List<CardModel> needsReviewCard;
  List<CardModel> inProgressCard;
  List<CardModel> approvedCard;

  CardLoadedState({
    required this.loadedCard,
    required this.onHoldCard,
    required this.needsReviewCard,
    required this.inProgressCard,
    required this.approvedCard,
  }) : assert(loadedCard != null);
}

class CardErrorState extends CardState {}
