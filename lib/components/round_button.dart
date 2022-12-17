import 'dart:async';

import 'package:cvcard/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RoundButton extends StatefulWidget {
  final Uri uriUrl;
  final IconData? icon;
  final Color? color;

  const RoundButton({
    super.key,
    required this.uriUrl,
    required this.icon,
    required this.color,
  });

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) => setState(() => hover = value),
      onTap: () => unawaited(launchUrl(widget.uriUrl)),
      child: AnimatedScale(
        scale: hover ? 1.3 : 1,
        duration: const Duration(milliseconds: 100),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: Constants.backgroundColor,
          child: Icon(
            widget.icon,
            color: widget.color,
            size: 24.0,
          ),
        ),
      ),
    );
  }
}
