import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 168, 173),
        title: const Center(
          child: Text(
            'Apps em Mobx',
          ),
        ),
      ),
    );
  }
}
