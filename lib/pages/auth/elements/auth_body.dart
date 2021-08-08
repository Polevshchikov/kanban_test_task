import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_test_task/domain/cubit/user/user_cubit.dart';
import 'package:kanban_test_task/domain/repository/user_repository.dart';
import 'package:kanban_test_task/generated/l10n.dart';
import 'package:kanban_test_task/pages/auth/elements/auth_button.dart';
import 'package:kanban_test_task/pages/auth/elements/auth_field.dart';
import 'package:kanban_test_task/pages/auth/elements/auth_logIn_info.dart';
import 'package:kanban_test_task/pages/auth/elements/form_name.dart';

class AuthBody extends StatefulWidget {
  const AuthBody({Key? key}) : super(key: key);

  @override
  _AuthBodyState createState() => _AuthBodyState();
}

class _AuthBodyState extends State<AuthBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  late FocusNode _focusUsename;
  late FocusNode _focusPassword;
  String _username = '';
  String _password = '';
  UserRepository userRepository = UserRepository();
  @override
  void initState() {
    super.initState();
    _focusUsename = FocusNode();
    _focusPassword = FocusNode();

    _controllerUsername.addListener(() {
      setState(() {
        _username = _controllerUsername.text;
      });
    });
    _controllerPassword.addListener(() {
      setState(() {
        _password = _controllerPassword.text;
      });
    });
  }

  @override
  void dispose() {
    _focusUsename.dispose();
    _focusPassword.dispose();
    _controllerUsername.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserCubit>(
      create: (context) => UserCubit(userRepository),
      child: Form(
        key: _formKey,
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.8,
              maxHeight: 400,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                AuthField(
                  globalKey: _formKey,
                  controller: _controllerUsername,
                  focusNode: _focusUsename,
                  nextFocusNode: _focusPassword,
                  hintText: S.of(context).auth_username_form,
                  formName: ControllerForm.formUsername,
                ),
                AuthField(
                  globalKey: _formKey,
                  controller: _controllerPassword,
                  obscureText: true,
                  focusNode: _focusPassword,
                  nextFocusNode: _focusPassword,
                  hintText: S.of(context).auth_password_form,
                  formName: ControllerForm.formPassword,
                ),
                AuthButton(
                  username: _username,
                  password: _password,
                ),
                AuthLogInInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
