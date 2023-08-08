import 'package:flutter/material.dart';
import 'package:mobx_apps/app_formulario_reativo/screens/formulario_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'Formulario',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Formulario Enviado',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute<dynamic>(
                  builder: (context) => const FormScreen(),
                ),
              );
            },
            child: const Text(
              'Retornar',
            ),
          ),
        ],
      ),
    );
  }
}
