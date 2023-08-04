// ignore_for_file: use_setters_to_change_properties

import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String login = '';

  @action
  void getlogin(String value) => login = value;

  @observable
  String password = '';

  @action
  void getPassword(String value) => password = value;

  @computed
  bool get passwordValid => password.length >= 8;

  @computed
  bool get loginValid =>
      login.contains('.') &&
      RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
          .hasMatch(login);

  @computed
  bool get isValid => loginValid && passwordValid;
}
