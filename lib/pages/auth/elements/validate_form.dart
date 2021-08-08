import 'package:flutter/material.dart';
import 'package:kanban_test_task/generated/l10n.dart';
import 'package:kanban_test_task/pages/auth/elements/form_name.dart';

class ValidateTextForm {
  ///Валидация форм
  dynamic validateForm({
    required String value,
    required ControllerForm formName,
    required BuildContext context,
  }) {
    //  Проверка имени пользователя
    if (formName == ControllerForm.formUsername) {
      if (value == '') return S.of(context).validate_empty;
      if (value.length < 4) return S.of(context).validate_username_length;
      return null;
    }
    //  Проверка пароля
    if (formName == ControllerForm.formPassword) {
      if (value == '') return S.of(context).validate_empty;
      if (value.length < 8) return S.of(context).validate_passwodr_length;
      return null;
    }
  }
}
