// ignore_for_file: use_setters_to_change_properties

import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String email = '';

  @action
  void getEmail(String value) => email = value;

  @observable
  String password = '';

  @action
  void getPassword(String value) => password = value;

  @computed
  bool get passwordValid => password.length >= 8;

  @computed
  bool get emailValid =>
      email.contains('.') &&
      RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
          .hasMatch(email);

  @computed
  bool get isValid => emailValid && passwordValid;
}
