import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_apps/controller/login_controller.dart';
import 'package:mobx_apps/widgets/textfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final logincontroller = LoginController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'App Login',
        ),
      ),
      body: Column(
        children: [
          TextFieldWidget(
            labeltext: 'E-mail',
            obscure: false,
            onchanged: logincontroller.getEmail,
          ),
          const SizedBox(
            height: 20,
          ),
          TextFieldWidget(
            labeltext: 'Senha',
            obscure: true,
            onchanged: logincontroller.getPassword,
          ),
          const SizedBox(
            height: 20,
          ),
          Observer(
            builder: (_) {
              return ElevatedButton(
                onPressed: logincontroller.isValid ? () {} : null,
                child: const Text('LOGIN'),
              );
            },
          )
        ],
      ),
    );
  }
}
