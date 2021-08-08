import 'package:flutter/material.dart';
import 'package:kanban_test_task/generated/l10n.dart';
import 'package:kanban_test_task/pages/auth/elements/auth_body.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(S.of(context).app_bar_title),
        centerTitle: false,
        backgroundColor: Colors.white12,
      ),
      body: AuthBody(),
    );
  }
}
