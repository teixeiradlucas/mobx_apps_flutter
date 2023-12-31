// ignore_for_file: use_setters_to_change_properties

import 'package:mobx/mobx.dart';
import 'package:mobx_apps/app_list_name/controller/name_list_controller.dart';
part 'title_controller.g.dart';

class TitleController = _TitleControllerBase with _$TitleController;

abstract class _TitleControllerBase with Store {
  @observable
  String nome = '';

  @action
  void novoNome(String value) => nome = value;

  @observable
  String sobrenome = '';

  @action
  void novoSobrenome(String value) => sobrenome = value;

  @computed
  bool get isValid => nome.length > 2 && sobrenome.length > 2;

  ObservableList<NameListController> observeList =
      ObservableList<NameListController>();

  @action
  void addTodo() {
    observeList.insert(
      0,
      NameListController('$nome $sobrenome'),
    );
    nome = '';
    sobrenome = '';
  }
}
