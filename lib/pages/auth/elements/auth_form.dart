import 'package:flutter/material.dart';
import 'package:kanban_test_task/pages/auth/elements/form_name.dart';
import 'package:kanban_test_task/pages/auth/elements/validate_form.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({
    Key? key,
    required this.controller,
    required this.globalKey,
    this.obscureText = false,
    required this.focusNode,
    required this.nextFocusNode,
    required this.formName,
    required this.hintText,
  }) : super(key: key);
  final TextEditingController controller;
  final GlobalKey<FormState> globalKey;
  final bool obscureText;
  final FocusNode focusNode;
  final FocusNode nextFocusNode;
  final String hintText;
  final ControllerForm formName;

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  String? validateText;
  @override
  void initState() {
    widget.controller.addListener(() {
      setState(() {
        validateText = (ValidateTextForm().validateForm(
          value: widget.controller.text,
          formName: widget.formName,
          context: context,
        ));
        widget.globalKey.currentState!.validate();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      focusNode: widget.focusNode,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      controller: widget.controller,
      validator: (_) => validateText,
      keyboardType: TextInputType.emailAddress,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: Colors.teal,
              width: 2.0,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: Colors.white54,
              width: 2.0,
            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: Colors.red,
              width: 2.0,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: Colors.teal,
              width: 2.0,
            )),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontSize: 16,
          color: Colors.white54,
        ),
      ),
      onFieldSubmitted: (term) {
        widget.focusNode.unfocus();
        if (widget.focusNode != widget.nextFocusNode) {
          FocusScope.of(context).requestFocus(widget.nextFocusNode);
        }
      },
    );
  }
}
