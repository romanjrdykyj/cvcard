import 'package:cvcard/common/constants.dart';
import 'package:flutter/material.dart';

class SectionName extends StatelessWidget {
  final String name;

  const SectionName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      name.toUpperCase(),
      style: const TextStyle(
        fontFamily: 'MavenPro',
        color: Constants.standardTextColor,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
