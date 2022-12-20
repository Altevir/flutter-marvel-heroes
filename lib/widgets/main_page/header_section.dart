import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
    required this.title,
    required this.subtitle,
    required this.fontFamilyTitle,
    required this.fontSizeTitle,
    required this.colorTitle,
    required this.fontFamilySubtitle,
    required this.fontSizeSubtitle,
    required this.colorSubtitle,
  });

  final String title;
  final String subtitle;
  final String fontFamilyTitle;
  final double fontSizeTitle;
  final Color colorTitle;
  final String fontFamilySubtitle;
  final double fontSizeSubtitle;
  final Color colorSubtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: fontSizeTitle,
            fontFamily: fontFamilyTitle,
            color: colorTitle,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: fontSizeSubtitle,
            fontFamily: fontFamilySubtitle,
            color: colorSubtitle,
            height: 1,
          ),
        )
      ],
    );
  }
}
