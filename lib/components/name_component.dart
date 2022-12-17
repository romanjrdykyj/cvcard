import 'package:cvcard/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameComponent extends StatelessWidget {
  const NameComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      'Roman Dykyj Jr.',
      style: GoogleFonts.mavenPro(
        fontSize: 24,
        color: Constants.standardLabelColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
