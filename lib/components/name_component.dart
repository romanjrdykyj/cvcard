import 'package:cvcard/common/constants.dart';
import 'package:flutter/material.dart';

class NameComponent extends StatelessWidget {
  const NameComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectableText(
      'Roman Dykyj Jr.',
      style: TextStyle(
        fontFamily: 'MavenPro',
        fontSize: 24,
        color: Constants.standardLabelColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
