import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_test_task/domain/cubit/card/card_cubit.dart';
import 'package:kanban_test_task/domain/cubit/card/card_state.dart';
import 'package:kanban_test_task/domain/entity/card_model.dart';
import 'package:kanban_test_task/generated/l10n.dart';
import 'package:kanban_test_task/pages/task/elements/text_card_widget.dart';

class TaskBodyWidget extends StatelessWidget {
  final int typeList;
  const TaskBodyWidget({Key? key, required this.typeList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardCubit, CardState>(
      builder: (context, state) {
        if (state is CardLoadingState) {
          CardCubit cardCubit = context.read<CardCubit>();
          cardCubit.fetchCards();
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is CardLoadedState) {
          List<CardModel> cardList = state.loadedCard;
          if (typeList == 0) cardList = state.onHoldCard;
          if (typeList == 1) cardList = state.inProgressCard;
          if (typeList == 2) cardList = state.needsReviewCard;
          if (typeList == 3) cardList = state.approvedCard;

          return Container(
            child: SingleChildScrollView(
              child: Column(
                children: cardList.map((card) {
                  return TextCardWidget(
                    id: card.id,
                    text: card.text,
                  );
                }).toList(),
              ),
            ),
          );
        }
        if (state is CardErrorState) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).error_text,
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                const SizedBox(height: 32),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
