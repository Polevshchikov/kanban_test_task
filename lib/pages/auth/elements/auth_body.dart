import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_test_task/domain/cubit/user/user_cubit.dart';
import 'package:kanban_test_task/domain/cubit/user/user_state.dart';
import 'package:kanban_test_task/domain/repository/user_repository.dart';
import 'package:kanban_test_task/generated/l10n.dart';
import 'package:kanban_test_task/pages/auth/elements/auth_form.dart';
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
  String textErrors = '';
  bool showWidget = false;
  UserRepository userRepository = UserRepository();
  @override
  void initState() {
    super.initState();
    _focusUsename = FocusNode();
    _focusPassword = FocusNode();
    _controllerUsername.addListener(() {
      _username = _controllerUsername.text;
      // print(_username);
    });
    _controllerPassword.addListener(() {
      _password = _controllerPassword.text;
    });
  }

  //  Метод проверяющий валидацию ввода данных и в случае успеха переходим на страницу
  bool _signIn() {
    if (_username.length >= 4 && _password.length >= 8) {
      return true;
    } else {
      return false;
    }
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
                AuthForm(
                  globalKey: _formKey,
                  controller: _controllerUsername,
                  focusNode: _focusUsename,
                  nextFocusNode: _focusPassword,
                  hintText: S.of(context).auth_username_form,
                  formName: ControllerForm.formUsername,
                ),
                AuthForm(
                  globalKey: _formKey,
                  controller: _controllerPassword,
                  obscureText: true,
                  focusNode: _focusPassword,
                  nextFocusNode: _focusPassword,
                  hintText: S.of(context).auth_password_form,
                  formName: ControllerForm.formPassword,
                ),
                BlocBuilder<UserCubit, UserState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        MaterialButton(
                          minWidth: MediaQuery.of(context).size.width,
                          height: 55.0,
                          onPressed: () async {
                            if (_signIn()) {
                              await context
                                  .read<UserCubit>()
                                  .getToken(_username, _password);
                              if (state is UserLoadedState) {
                                print('object');
                                Navigator.pushReplacementNamed(context, '/task',
                                    arguments: state.token);
                              }
                              if (state is UserEmptyState) {
                                print('objecwsdget');
                                showWidget = true;
                                textErrors = state.errors;
                              }
                            }
                          },
                          color: Colors.teal,
                          child: Text(
                            S.of(context).auth_button_text,
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        Column(
                          children: showWidget
                              ? [
                                  SizedBox(height: 20),
                                  Text(
                                    textErrors,
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ]
                              : [],
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
