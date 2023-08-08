// ignore_for_file: use_setters_to_change_properties

import 'package:mobx/mobx.dart';
import 'package:mobx_apps/app_todo_list/controller/todo_controller.dart';
part 'todolist_controller.g.dart';

class TodoListController = _TodoListControllerBase with _$TodoListController;

abstract class _TodoListControllerBase with Store {
  @observable
  String newTodoTitle = '';

  @action
  void setNewTodoTitle(String newtitle) => newTodoTitle = newtitle;

  @computed
  bool get isFormValid => newTodoTitle.isNotEmpty;

  ObservableList<TodoController> todoList = ObservableList<TodoController>();

  @action
  void addTodo() {
    todoList.insert(
      0,
      TodoController(
        newTodoTitle,
      ),
    );
  }
}
