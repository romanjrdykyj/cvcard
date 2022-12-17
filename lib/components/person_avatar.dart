import 'package:flutter/material.dart';

class PersonAvatar extends StatelessWidget {
  const PersonAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 75,
      backgroundColor: Colors.transparent,
      // its ok to be transparent too.
      // ignore: no-equal-arguments
      foregroundColor: Colors.transparent,
      backgroundImage: AssetImage('assets/images/avatar.jpg'),
    );
  }
}
