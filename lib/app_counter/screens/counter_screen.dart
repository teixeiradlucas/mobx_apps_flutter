import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_apps/app_counter/controller/counter_controller.dart';

class CouterScreen extends StatelessWidget {
  const CouterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = CounterController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'App Counter',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Futura',
              ),
            ),
            Observer(
              builder: (_) {
                return Text(
                  controller.counter.toString(),
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: controller.countIncrement,
        tooltip: 'Increment',
        child: const Icon(
          Icons.add_box_outlined,
        ),
      ),
    );
  }
}
