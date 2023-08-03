import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_apps/controller/title_controller.dart';
import 'package:mobx_apps/screens/todo_list.dart';
import 'package:mobx_apps/widget/widget_textfield.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final textwidth = screenwidth * 0.8;
    final titleController = TitleController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 168, 173),
        title: const Center(
          child: Text(
            'Apps em Mobx',
          ),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          margin: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              WidgetTextfield(
                text: 'Nome',
                width: textwidth,
                action: titleController.novoNome,
              ),
              const SizedBox(
                height: 10,
              ),
              WidgetTextfield(
                text: 'Sobrenome',
                width: textwidth,
                action: titleController.novoSobrenome,
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: titleController.addTodo,
                child: const Text('Adicionar'),
              ),
              const SizedBox(
                height: 20,
              ),
              TodoList(
                titleController: titleController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
