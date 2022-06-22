import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: const TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Hi! ',
                style: TextStyle(
                    fontFamily: 'EmojiOne',
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange), // non-emoji characters
              ),
            ],
          ),
        ),
      ],
    );
  }
}