import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_apps/app_todo_list/controller/todolist_controller.dart';
import 'package:mobx_apps/widgets/appbar_widget.dart';
import 'package:mobx_apps/widgets/space_widget.dart';
import 'package:mobx_apps/widgets/textfield_widget.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textcontroller = TextEditingController();
    final listcontroller = TodoListController();
    return Scaffold(
      appBar: AppbarWidget(
        'App Todo List',
        Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            const SpaceWidget(),
            TextFieldWidget(
              onChanged: listcontroller.setNewTodoTitle,
              suffix: IconButton(
                icon: const Icon(
                  Icons.add,
                ),
                onPressed: () {
                  listcontroller.addTodo();
                  textcontroller.clear();
                },
              ),
              labelText: 'Tarefas',
              controller: textcontroller,
            ),
            Expanded(
              child: Observer(
                builder: (_) {
                  return ListView.separated(
                    itemCount: listcontroller.todoList.length,
                    itemBuilder: (_, index) {
                      final todo = listcontroller.todoList[index];
                      return Observer(
                        builder: (_) {
                          return ListTile(
                            title: Text(
                              todo.title,
                              style: TextStyle(
                                decoration: todo.done
                                    ? TextDecoration.lineThrough
                                    : null,
                                color: todo.done ? Colors.grey : Colors.black,
                              ),
                            ),
                            onTap: todo.toggleDone,
                          );
                        },
                      );
                    },
                    separatorBuilder: (_, __) {
                      return const Divider();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
