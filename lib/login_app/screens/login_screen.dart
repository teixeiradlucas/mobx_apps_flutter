import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_apps/login_app/controller/login_controller.dart';
import 'package:mobx_apps/login_app/widgets/textfield_widget.dart';

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
          const SizedBox(
            height: 20,
          ),
          TextFieldWidget(
            prefix: const Icon(Icons.person_pin),
            labeltext: 'E-mail',
            obscure: false,
            onchanged: logincontroller.getEmail,
          ),
          const SizedBox(
            height: 20,
          ),
          Observer(
            builder: (_) {
              return TextFieldWidget(
                prefix: const Icon(Icons.lock),
                suffix: IconButton(
                  onPressed: logincontroller.visibilityAction,
                  icon: Icon(
                    logincontroller.passwordinvisibility
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
                labeltext: 'Senha',
                obscure: logincontroller.passwordinvisibility,
                onchanged: logincontroller.getPassword,
              );
            },
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
