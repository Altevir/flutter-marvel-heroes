import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    super.key,
    required this.title,
    required this.fontFamily,
    required this.fontSize,
    required this.color,
    this.lineHeight,
  });

  final String title;
  final String fontFamily;
  final double fontSize;
  final Color color;
  final double? lineHeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        height: lineHeight,
      ),
    );
  }
}
