import 'package:flutter/material.dart';

class TopNavButton extends StatelessWidget {
  const TopNavButton({required this.buttonLabel, this.onPressed});

  final String buttonLabel;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(child: Text(buttonLabel, style: const TextStyle(color: Colors.blue),)),
    );
  }
}