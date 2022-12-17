import 'package:cvcard/common/constants.dart';
import 'package:cvcard/components/round_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialSection extends StatelessWidget {
  const SocialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        RoundButton(
          uriUrl: Uri(
            scheme: 'https',
            host: 'linkedin.com',
            path: 'in/roman-dykyj-33131b170',
          ),
          icon: FontAwesomeIcons.linkedinIn,
          color: const Color(0xFF0B66C2),
        ),
        const SizedBox(width: 10),
        RoundButton(
          uriUrl: Uri(
            scheme: 'https',
            host: 'github.com',
            path: 'romanjrdykyj',
          ),
          icon: FontAwesomeIcons.github,
          color: Constants.standardLabelColor,
        ),
        const SizedBox(width: 10),
        RoundButton(
          uriUrl: Uri(
            scheme: 'https',
            host: 'buymeacoffee.com',
            path: 'romanjrdykyj',
          ),
          icon: FontAwesomeIcons.heart,
          color: Constants.highlightColor,
        ),
      ],
    );
  }
}
