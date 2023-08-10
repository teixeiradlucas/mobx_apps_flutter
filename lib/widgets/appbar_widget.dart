// ignore_for_file: flutter_style_todos

import 'package:flutter/material.dart';

class AppbarWidget extends AppBar {
  AppbarWidget(this.text, this.cor, {super.key});

  final String text;
  final Color cor;

  @override
  // TODO: implement backgroundColor
  Color? get backgroundColor => cor;

  @override
  // TODO: implement centerTitle
  bool? get centerTitle => true;

  @override
  // TODO: implement title
  Widget? get title => Text(text);
}
