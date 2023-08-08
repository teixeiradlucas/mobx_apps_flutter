import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_apps/app_formulario_reativo/controller/controller.dart';
import 'package:mobx_apps/app_formulario_reativo/screens/second_screen.dart';
import 'package:mobx_apps/app_formulario_reativo/widgets/textfield_widget.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Controller();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Observer(
            builder: (_) {
              return Text(
                controller.validateForm
                    ? 'Formulário Valido'
                    : 'Formulário Inválido',
                style: const TextStyle(
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
      ),
      body: Observer(
        builder: (_) {
          return Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              TextFieldWidget(
                onChanged: controller.client.changeName,
                labelText: 'Nome',
                errorText: controller.validateName ? null : 'Nome Inválido',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFieldWidget(
                onChanged: controller.client.changeEmail,
                labelText: 'Email',
                errorText: controller.validateEmail ? null : 'Email Inválido',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFieldWidget(
                onChanged: controller.client.changeCpf,
                labelText: 'CPF',
                errorText: controller.validateCpf ? null : 'CPF Inválido',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: controller.validateForm
                    ? () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute<dynamic>(
                            builder: (context) => const SecondScreen(),
                          ),
                        );
                      }
                    : null,
                child: const Text(
                  'Enviar',
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
