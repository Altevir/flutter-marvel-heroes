import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class AppBarMain extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMain({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      toolbarHeight: height,
      flexibleSpace: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'icons/bar_menu.svg',
                  height: 24,
                  width: 24,
                ),
                Image.asset(
                  'icons/bar_logo.png',
                  width: 71,
                  height: 26,
                ),
                SvgPicture.asset(
                  'icons/bar_search.svg',
                  height: 24,
                  width: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
