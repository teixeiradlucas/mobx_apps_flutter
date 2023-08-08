import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    required this.onChanged,
    required this.labelText,
    required this.errorText,
    required this.keyboardType,
    super.key,
  });

  final void Function(String)? onChanged;
  final String? errorText;
  final TextInputType keyboardType;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText,
      ),
    );
  }
}
