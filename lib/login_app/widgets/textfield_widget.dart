import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    required this.labeltext,
    required this.obscure,
    required this.onchanged,
    super.key,
    this.prefix,
    this.suffix,
  });

  final bool obscure;
  final String labeltext;
  final Widget? suffix;
  final Widget? prefix;
  final void Function(String)? onchanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onchanged,
      obscureText: obscure,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labeltext,
        prefixIcon: prefix,
        suffixIcon: suffix,
      ),
    );
  }
}
