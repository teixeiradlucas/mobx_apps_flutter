import 'package:flutter/material.dart';

class WidgetTextfield extends StatelessWidget {
  const WidgetTextfield({
    required this.action,
    required this.text,
    required this.width,
    super.key,
  });

  final void Function(String)? action;
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        controller: TextEditingController(),
        onChanged: action,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: text,
        ),
      ),
    );
  }
}
