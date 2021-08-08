import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_test_task/domain/cubit/card/card_cubit.dart';
import 'package:kanban_test_task/domain/repository/card_repository.dart';
import 'package:kanban_test_task/pages/task/elements/task_body_widget.dart';

class NeedsReviewWidget extends StatelessWidget {
  NeedsReviewWidget({Key? key, required this.token}) : super(key: key);
  final String token;
  final cardRepository = CardRepository();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CardCubit>(
      create: (context) => CardCubit(cardRepository, token),
      child: TaskBodyWidget(typeList: 2),
    );
  }
}
