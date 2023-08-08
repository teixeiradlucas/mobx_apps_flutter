import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_apps/app_todo_list/controller/todolist_controller.dart';
import 'package:mobx_apps/app_todo_list/widgets/textfield_widget.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textcontroller = TextEditingController();
    final listcontroller = TodoListController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text(
            'App Todo List',
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextFieldWidget(
              onchanged: listcontroller.setNewTodoTitle,
              suffixicon: IconButton(
                icon: const Icon(
                  Icons.add,
                ),
                onPressed: () {
                  listcontroller.addTodo();
                  textcontroller.clear();
                },
              ),
              text: 'Tarefas',
              textcontroller: textcontroller,
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
