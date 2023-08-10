// ignore_for_file: avoid_bool_literals_in_conditional_expressions,
// ignore_for_file: use_if_null_to_convert_nulls_to_bools

import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    required this.labelText,
    this.onChanged,
    this.keyboardType,
    this.errorText,
    super.key,
    this.suffix,
    this.prefix,
    this.obscure,
    this.controller,
  });

  final void Function(String)? onChanged;
  final String? errorText;
  final TextInputType? keyboardType;
  final String labelText;
  final Widget? suffix;
  final Widget? prefix;
  final bool? obscure;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscure == true ? true : false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText,
        prefixIcon: prefix,
        suffixIcon: suffix,
      ),
    );
  }
}
