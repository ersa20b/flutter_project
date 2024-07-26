import 'package:flutter/material.dart';

class DialogBotton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  DialogBotton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.grey,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
