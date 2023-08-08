// ignore_for_file: use_setters_to_change_properties

import 'package:mobx/mobx.dart';
part 'client_controller.g.dart';

class ClientController = _ClientControllerBase with _$ClientController;

abstract class _ClientControllerBase with Store {
  @observable
  String name = '';
  @action
  void changeName(String value) => name = value;

  @observable
  String email = '';
  @action
  void changeEmail(String value) => email = value;

  @observable
  String cpf = '';
  void changeCpf(String value) => cpf = value;
}
