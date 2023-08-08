import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_apps/app_list_name/controller/title_controller.dart';
import 'package:mobx_apps/app_list_name/screens/name_list.dart';
import 'package:mobx_apps/app_list_name/widgets/textfield_widget.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controllernome = TextEditingController();
    final controllersobrenome = TextEditingController();
    final screenwidth = MediaQuery.of(context).size.width;
    final textwidth = screenwidth * 0.8;
    final titleController = TitleController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 168, 173),
        title: const Center(
          child: Text(
            'Apps Name List',
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
              TextFieldWidget(
                text: 'Nome',
                width: textwidth,
                controller: controllernome,
                action: titleController.novoNome,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                text: 'Sobrenome',
                width: textwidth,
                controller: controllersobrenome,
                action: titleController.novoSobrenome,
              ),
              const SizedBox(
                height: 15,
              ),
              Observer(
                builder: (_) {
                  return ElevatedButton(
                    onPressed: titleController.isValid
                        ? () {
                            titleController.addTodo();
                            controllernome.clear();
                            controllersobrenome.clear();
                          }
                        : null,
                    child: const Text('Adicionar'),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              NameList(
                titleController: titleController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}