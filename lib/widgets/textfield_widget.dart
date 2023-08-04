import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    required this.labeltext,
    required this.obscure,
    required this.onchanged,
    super.key,
  });

  final bool obscure;
  final String labeltext;
  final Function(String)? onchanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onchanged,
      obscureText: obscure,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labeltext,
      ),
    );
  }
}
