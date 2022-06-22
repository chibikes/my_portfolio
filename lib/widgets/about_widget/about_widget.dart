import 'package:flutter/material.dart';

import 'creative_text.dart';
import 'image_section.dart';

class AboutWidget extends StatelessWidget {
  final GlobalKey aboutKey;

  const AboutWidget(this.aboutKey);

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Center(
      child: Container(
        key: aboutKey,
        height: data.size.height,
        width: data.size.width,
        color: Colors.white,
        child: const CreativeText(),
      ),
    );
  }
}