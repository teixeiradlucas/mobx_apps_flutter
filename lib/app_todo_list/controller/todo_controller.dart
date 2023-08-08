import 'package:mobx/mobx.dart';
part 'todo_controller.g.dart';

class TodoController = _TodoControllerBase with _$TodoController;

abstract class _TodoControllerBase with Store {
  _TodoControllerBase(this.title);

  final String title;

  @observable
  bool done = false;

  @action
  void toggleDone() => done = !done;
}
