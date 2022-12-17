import 'package:cvcard/components/section_name.dart';
import 'package:cvcard/components/section_single_option.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SectionName(name: 'CONTACT'),
        SizedBox(height: 10),
        SectionSingleOption(
          icon: FontAwesomeIcons.phone,
          text: '+48 883 761 430',
        ),
        SizedBox(height: 10),
        SectionSingleOption(
          icon: FontAwesomeIcons.at,
          text: 'romanjrdykyj@gmail.com',
        ),
      ],
    );
  }
}
