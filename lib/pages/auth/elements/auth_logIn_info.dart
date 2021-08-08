import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_test_task/domain/cubit/user/user_cubit.dart';
import 'package:kanban_test_task/domain/cubit/user/user_state.dart';

class AuthLogInInfo extends StatefulWidget {
  const AuthLogInInfo({Key? key}) : super(key: key);

  @override
  _AuthLogInInfoState createState() => _AuthLogInInfoState();
}

class _AuthLogInInfoState extends State<AuthLogInInfo> {
  String textErrors = '';
  bool showWidget = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state is UserEmptyState) {
          showWidget = true;
          textErrors = state.errors;
        }

        return Column(
          children: showWidget
              ? [
                  Text(
                    textErrors,
                    style: TextStyle(color: Colors.red),
                  ),
                ]
              : [],
        );
      },
    );
  }
}
// Navigator.pushReplacementNamed(
//                   context,
//                   '/task',
//                   arguments: (userCubit.state as UserLoadedState).token,
//                 );