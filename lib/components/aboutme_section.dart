import 'package:cvcard/components/section_name.dart';
import 'package:cvcard/components/section_single_option.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutmeSection extends StatelessWidget {
  const AboutmeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SectionName(name: 'ABOUT ME'),
        SizedBox(height: 10),
        SectionSingleOption(
          icon: FontAwesomeIcons.cakeCandles,
          text: '24 yrs old',
        ),
        SizedBox(height: 10),
        SectionSingleOption(
          icon: FontAwesomeIcons.userGraduate,
          text: 'Computer Science at Gdańsk University of Technology',
        ),
        SizedBox(height: 10),
        SectionSingleOption(
          icon: FontAwesomeIcons.suitcase,
          text: 'Flutter Developer at Roduq',
        ),
      ],
    );
  }
}
