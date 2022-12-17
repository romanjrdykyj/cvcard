import 'package:cvcard/common/constants.dart';
import 'package:cvcard/components/aboutme_section.dart';
import 'package:cvcard/components/button_section.dart';
import 'package:cvcard/components/contact_section.dart';
import 'package:cvcard/components/job_title.dart';
import 'package:cvcard/components/name_component.dart';
import 'package:cvcard/components/person_avatar.dart';
import 'package:cvcard/components/projects_section.dart';
import 'package:cvcard/components/social_section.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Roman Dykyj's CV Card",
      scrollBehavior: const ScrollBehavior().copyWith(scrollbars: false),
      home: Scaffold(
        backgroundColor: Constants.backgroundColor,
        body: Center(
          child: SingleChildScrollView(
            child: FittedBox(
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Constants.floatingElementBackgroundColor,
                ),
                constraints: const BoxConstraints(
                  maxWidth: 450,
                ),
                child: Column(
                  children: const [
                    SizedBox(height: 20),
                    PersonAvatar(),
                    SizedBox(height: 20),
                    NameComponent(),
                    SizedBox(height: 5),
                    JobTitle(),
                    SizedBox(height: 20),
                    SocialSection(),
                    SizedBox(height: 20),
                    AboutmeSection(),
                    SizedBox(height: 20),
                    ProjectsSection(),
                    SizedBox(height: 20),
                    ContactSection(),
                    SizedBox(height: 30),
                    ButtonSection(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
