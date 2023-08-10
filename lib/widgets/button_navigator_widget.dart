import 'package:flutter/material.dart';

class ButtonNavigator extends StatelessWidget {
  const ButtonNavigator({
    required this.text,
    required this.widget,
    super.key,
  });

  final String text;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute<dynamic>(
            builder: (context) => widget,
          ),
        );
      },
      child: Text(
        text,
      ),
    );
  }
}
