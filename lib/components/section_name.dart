import 'package:cvcard/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionName extends StatelessWidget {
  final String name;

  const SectionName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      name.toUpperCase(),
      style: GoogleFonts.mavenPro(
        color: Constants.standardTextColor,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
