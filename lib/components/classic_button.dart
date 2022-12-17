import 'dart:async';
// its only web project.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:cvcard/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ClassicButton extends StatefulWidget {
  final Uri uriUrl;
  final String text;
  final Color? textColor;
  final Color? backgroundColor;

  const ClassicButton({
    super.key,
    required this.uriUrl,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
  });

  @override
  State<ClassicButton> createState() => _ClassicButtonState();
}

class _ClassicButtonState extends State<ClassicButton> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) => setState(() => hover = value),
      onTap: () => unawaited(launchUrl(widget.uriUrl)),
      child: AnimatedScale(
        scale: hover ? 1.09 : 1,
        duration: const Duration(milliseconds: 100),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: widget.backgroundColor,
            border: Border.all(
              color: widget.backgroundColor ?? Constants.backgroundColor,
              width: 2,
            ),
          ),
          child: Text(
            widget.text,
            style: GoogleFonts.mavenPro(
              color: widget.textColor ?? Constants.standardLabelColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  void downloadFile(String? url) {
    AnchorElement anchorElement = AnchorElement(href: url);
    anchorElement.download = 'CV_Roman_Dykyj.pdf';
    anchorElement.click();
  }
}
