import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "I'm Chibuike Okoh",
          style: TextStyle(
              fontSize: 40, color: Colors.black),
        ),
      ],
    );
  }
}