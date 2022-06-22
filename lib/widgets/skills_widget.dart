import 'package:flutter/material.dart';

import '../models/skill_data.dart';

class SkillWidget extends StatelessWidget {
  final dynamic skillsKey;

  const SkillWidget(this.skillsKey);

  @override
  Widget build(BuildContext context) {

    List skillList = [
      SkillData(
        image: "assets/icon_flutter.png",
        skillTitle: "Flutter Development",
      ),
      SkillData(
        image: "assets/firebase_logo.png",
        skillTitle: "Firebase",
      ),
      SkillData(
        image: "assets/google_cloud_icon.png",
        skillTitle: "Google Cloud Developer",
      ),
      SkillData(
        image: "assets/android_icon.png",
        skillTitle: "Android Development",
      ),
    ];
    return Center(
      child: Center(
        child: Container(
            height: 500,
            width: double.infinity,
            color: Colors.white70,
            key: skillsKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Skills",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow.shade400,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: skillList.length,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            // height: 200,
                            // width: 200,
                            color: Colors.white70,
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    skillList[index].image,
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  skillList[index].skillTitle,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            )),
      ),
    );
  }
}