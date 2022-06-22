import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/project_data.dart';

class ProjectWidget extends StatelessWidget {
  final dynamic projectsKey;

  const ProjectWidget(this.projectsKey);

  /// project List

  @override
  Widget build(BuildContext context) {

    List projectList = [
      ProjectData(
        image: "https://i.ibb.co/dPcpXWV/slider1.jpg",
        projectTitle: "Ecommerce App",
        description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      ),
      ProjectData(
        image: "https://i.ibb.co/HrB8t6K/slider2.jpg",
        projectTitle: "Recipe App",
        description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      ),
      ProjectData(
        image: "https://i.ibb.co/tKYYkR5/slider3.jpg",
        projectTitle: "Responsive App",
        description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      ),
      ProjectData(
        image: "https://i.ibb.co/kG3wmzB/slider4.jpg",
        projectTitle: "Fintech App",
        description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      )
    ];

    return Center(
      child: Center(
        child: Container(
            height: 500,
            width: double.infinity,
            color: Colors.white,
            key: projectsKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "<Projects>",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow.shade400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: projectList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SizedBox(
                              width: 600,
                              child: Column(
                                children: [
                                  Image.network(
                                    projectList[index].image,
                                    height: 250,
                                    width: 500,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      projectList[index].projectTitle,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 30),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      projectList[index].description,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        })),
              ],
            )),
      ),
    );
  }
}