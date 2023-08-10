import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_apps/app_formulario_reativo/controller/controller.dart';
import 'package:mobx_apps/app_formulario_reativo/screens/second_screen.dart';
import 'package:mobx_apps/widgets/appbar_widget.dart';
import 'package:mobx_apps/widgets/space_widget.dart';
import 'package:mobx_apps/widgets/textfield_widget.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Controller();

    return Scaffold(
      appBar: AppbarWidget(
        'Formulário',
        Colors.green,
      ),
      body: Observer(
        builder: (_) {
          return Column(
            children: [
              const SpaceWidget(),
              TextFieldWidget(
                onChanged: controller.client.changeName,
                labelText: 'Nome',
                errorText: controller.validateName ? null : 'Nome Inválido',
                keyboardType: TextInputType.name,
              ),
              const SpaceWidget(),
              TextFieldWidget(
                onChanged: controller.client.changeEmail,
                labelText: 'Email',
                errorText: controller.validateEmail ? null : 'Email Inválido',
                keyboardType: TextInputType.emailAddress,
              ),
              const SpaceWidget(),
              TextFieldWidget(
                onChanged: controller.client.changeCpf,
                labelText: 'CPF',
                errorText: controller.validateCpf ? null : 'CPF Inválido',
                keyboardType: TextInputType.number,
              ),
              //const SpaceWidget(),
              Text(
                controller.validateForm
                    ? 'Formulário Valido'
                    : 'Formulário Inválido',
              ),
              const SpaceWidget(),
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
