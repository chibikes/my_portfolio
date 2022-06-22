import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/about_widget/about_widget.dart';
import 'package:my_portfolio/widgets/contact_widget.dart';
import 'package:my_portfolio/widgets/name_widget.dart';
import 'package:my_portfolio/widgets/project_widget.dart';
import 'package:my_portfolio/widgets/skills_widget.dart';
import 'package:my_portfolio/widgets/top_nav_button.dart';
import 'package:my_portfolio/widgets/welcome_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();

  var aboutContext;
  var skillsContext;
  var projectsContext;
  var contactContext;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      aboutContext = aboutKey.currentContext;
      skillsContext = skillsKey.currentContext;
      projectsContext = projectsKey.currentContext;
      contactContext = contactKey.currentContext;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text('   Okoh Chibuike', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),),
        actions: [
          ///About - button
          TopNavButton(
            buttonLabel: "About",
            onPressed: () {
              setState(() {
                if (aboutContext != null) {
                  Scrollable.ensureVisible(aboutContext,
                      alignment: 0,
                      duration: const Duration(milliseconds: 500));
                }
              });
            },
          ),

          TopNavButton(
            buttonLabel: "Projects",
            onPressed: () {
              setState(() {
                if (projectsContext != null) {
                  Scrollable.ensureVisible(projectsContext,
                      alignment: 0,
                      duration: const Duration(milliseconds: 500));
                }
              });
            },
          ),

          //TODO 2: Create "Skills" button here.
          TopNavButton(
            buttonLabel: "Skills",
            onPressed: () {
              setState(() {
                if (skillsContext != null) {
                  Scrollable.ensureVisible(skillsContext,
                      alignment: 0,
                      duration: const Duration(milliseconds: 500));
                }
              });
            },
          ),

          //TODO 3: Create "Contact" button here.
          TopNavButton(
            buttonLabel: "Contact",
            onPressed: () {
              setState(() {
                if (contactContext != null) {
                  Scrollable.ensureVisible(contactContext,
                      alignment: 0,
                      duration: const Duration(milliseconds: 500));
                }
              });
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AboutWidget(aboutKey),
              const Divider(thickness: 1.0, color: Colors.blueGrey,),
              ProjectWidget(projectsKey),
              const Divider(thickness: 1.0, color: Colors.blueGrey,),
              SkillWidget(skillsKey),
              ContactWidget(contactKey),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}











