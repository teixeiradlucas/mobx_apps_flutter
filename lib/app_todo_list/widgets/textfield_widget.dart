import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    required this.text,
    required this.onchanged,
    required this.suffixicon,
    super.key,
  });

  final String text;
  final void Function(String) onchanged;
  final Widget suffixicon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(),
      onChanged: onchanged,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: text,
        suffixIcon: suffixicon,
      ),
    );
  }
}
