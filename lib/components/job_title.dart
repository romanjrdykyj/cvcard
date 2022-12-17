import 'package:cvcard/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobTitle extends StatelessWidget {
  const JobTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      'Flutter Developer',
      style: GoogleFonts.mavenPro(
        fontSize: 16,
        color: Constants.standardTextColor,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
