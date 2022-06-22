import 'package:flutter/material.dart';

import '../name_widget.dart';
import '../welcome_widget.dart';

class CreativeText extends StatelessWidget {
  const CreativeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.only(top: data.size.height * 0.25),
      child: SizedBox(
        height:400,
        width: data.size.width / 2,
        child: Padding(
          padding: EdgeInsets.only(left: data.size.width * 0.30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeWidget(),
              const SizedBox(
                height: 10,
              ),
              NameWidget(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "I am a Flutter developer who loves making \nbeautiful, adaptive and responsive mobile apps. ",
                style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              //TODO 4: Create "Hire me" Elevated button.
            ],
          ),
        ),
      ),
    );
  }
}