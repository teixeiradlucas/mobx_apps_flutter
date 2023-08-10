import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_apps/app_login/controller/login_controller.dart';
import 'package:mobx_apps/app_login/screens/logout_screen.dart';
import 'package:mobx_apps/widgets/appbar_widget.dart';
import 'package:mobx_apps/widgets/textfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final logincontroller = LoginController();
    return Scaffold(
      appBar: AppbarWidget(
        'App Login',
        Colors.deepPurple,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextFieldWidget(
            prefix: const Icon(Icons.person_pin),
            labelText: 'E-mail',
            obscure: false,
            onChanged: logincontroller.getEmail,
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
                labelText: 'Senha',
                obscure: logincontroller.passwordinvisibility,
                onChanged: logincontroller.getPassword,
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Observer(
            builder: (_) {
              return ElevatedButton(
                onPressed: logincontroller.isValid
                    ? () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute<dynamic>(
                            builder: (context) => const LogoutScreen(),
                          ),
                        );
                      }
                    : null,
                child: const Text('LOGIN'),
              );
            },
          )
        ],
      ),
    );
  }
}
