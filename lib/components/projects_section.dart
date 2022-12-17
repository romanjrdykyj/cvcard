import 'package:cvcard/common/constants.dart';
import 'package:cvcard/components/section_name.dart';
import 'package:cvcard/components/section_single_option.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionName(name: 'PROJECTS'),
        const SizedBox(height: 10),
        SectionSingleOption(
          uriUrl: Uri(
            scheme: 'https',
            host: 'pub.dev',
            path: 'packages/select2dot1',
          ),
          icon: FontAwesomeIcons.cube,
          text: 'Select2dot1 - Flutter package available on pub.dev',
          textColor: Constants.highlightColor,
        ),
      ],
    );
  }
}
