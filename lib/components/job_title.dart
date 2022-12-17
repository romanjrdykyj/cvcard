import 'package:cvcard/common/constants.dart';
import 'package:flutter/material.dart';

class JobTitle extends StatelessWidget {
  const JobTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectableText(
      'Flutter Developer',
      style: TextStyle(
        fontFamily: 'MavenPro',
        fontSize: 16,
        color: Constants.standardTextColor,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
