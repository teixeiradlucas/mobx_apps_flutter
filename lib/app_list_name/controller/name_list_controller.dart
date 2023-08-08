import 'package:mobx/mobx.dart';
part 'name_list_controller.g.dart';

class NameListController = _NameListControllerBase with _$NameListController;

abstract class _NameListControllerBase with Store {
  _NameListControllerBase(this.title);

  final String title;
}
