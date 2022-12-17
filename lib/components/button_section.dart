import 'package:cvcard/common/constants.dart';
import 'package:cvcard/components/classic_button.dart';
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClassicButton(
            uriUrl: Uri(
              scheme: 'https',
              host: 'romanjrdykyj.site',
              path: 'assets/assets/CV_Roman_Dykyj.pdf',
            ),
            text: 'Download CV',
            textColor: null,
            backgroundColor: null,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ClassicButton(
            uriUrl: Uri(
              scheme: 'mailto',
              path: 'romanjrdykyj@gmail.com',
              queryParameters: {'subject': 'JobOffer'},
            ),
            text: 'Hire me',
            textColor: Constants.highlightColor,
            backgroundColor: Constants.backgroundColor,
          ),
        ),
      ],
    );
  }
}
