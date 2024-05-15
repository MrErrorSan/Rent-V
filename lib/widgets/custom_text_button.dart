import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomTextButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          //foregroundColor: MaterialStateProperty.all(Colors.orange),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ))),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
