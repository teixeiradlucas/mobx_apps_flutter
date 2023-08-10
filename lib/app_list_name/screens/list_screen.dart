import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_apps/app_list_name/controller/title_controller.dart';
import 'package:mobx_apps/app_list_name/screens/name_list.dart';
import 'package:mobx_apps/widgets/appbar_widget.dart';
import 'package:mobx_apps/widgets/textfield_widget.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controllernome = TextEditingController();
    final controllersobrenome = TextEditingController();
    final titleController = TitleController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppbarWidget(
        'App Counter',
        Colors.teal,
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
                labelText: 'Nome',
                controller: controllernome,
                onChanged: titleController.novoNome,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                labelText: 'Sobrenome',
                controller: controllersobrenome,
                onChanged: titleController.novoSobrenome,
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
