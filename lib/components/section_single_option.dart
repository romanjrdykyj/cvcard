import 'dart:async';

import 'package:cvcard/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SectionSingleOption extends StatefulWidget {
  final Uri? uriUrl;
  final IconData? icon;
  final String text;
  final Color? textColor;

  const SectionSingleOption({
    super.key,
    this.uriUrl,
    required this.icon,
    required this.text,
    Color? textColor,
  }) : textColor = textColor ?? Constants.standardTextColor;

  @override
  State<SectionSingleOption> createState() => _SectionSingleOptionState();
}

class _SectionSingleOptionState extends State<SectionSingleOption> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: widget.uriUrl == null
          ? null
          : (value) => setState(() => hover = value),
      onTap: widget.uriUrl == null
          ? null
          // its cant be null anyways
          // ignore: avoid-non-null-assertion, no-empty-block
          : () => unawaited(launchUrl(widget.uriUrl!)),
      child: AnimatedScale(
        alignment: Alignment.centerLeft,
        scale: hover ? 1.1 : 1,
        duration: const Duration(milliseconds: 100),
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: widget.textColor,
              size: 14.0,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: widget.uriUrl == null
                  ? SelectableText(
                      widget.text,
                      style: TextStyle(
                        fontFamily: 'MavenPro',
                        color: widget.textColor,
                        fontSize: 14,
                      ),
                    )
                  : Text(
                      widget.text,
                      style: TextStyle(
                        fontFamily: 'MavenPro',
                        color: widget.textColor,
                        fontSize: 14,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
