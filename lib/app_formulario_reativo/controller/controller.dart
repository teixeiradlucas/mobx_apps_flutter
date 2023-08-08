import 'package:mobx/mobx.dart';
import 'package:mobx_apps/app_formulario_reativo/controller/client_controller.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  final client = ClientController();

  @computed
  bool get validateName => client.name.length > 2;

  @computed
  bool get validateEmail =>
      RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
          .hasMatch(client.email) &&
      client.email.contains('.');

  @computed
  bool get validateCpf =>
      client.cpf.length == 11 && !client.cpf.contains('.') ||
      client.cpf.length == 14 &&
          client.cpf.contains('.') &&
          client.cpf.contains('-');

  @computed
  bool get validateForm => validateName && validateEmail && validateCpf;
}
