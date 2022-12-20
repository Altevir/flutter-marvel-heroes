import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class AvatarSection extends StatelessWidget {
  const AvatarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
        bottom: 32,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff005BEA),
                  Color(0xff00C6FB),
                ],
              ),
            ),
            child: SvgPicture.asset(
              'icons/ic_hero.svg',
              width: 32,
              height: 32,
              fit: BoxFit.scaleDown,
            ),
          ),
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffED1D24),
                  Color(0xffED1F69),
                ],
              ),
            ),
            child: SvgPicture.asset(
              'icons/ic_villain.svg',
              width: 32,
              height: 32,
              fit: BoxFit.scaleDown,
            ),
          ),
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffB224EF),
                  Color(0xff7579FF),
                ],
              ),
            ),
            child: SvgPicture.asset(
              'icons/ic_antihero.svg',
              width: 32,
              height: 32,
              fit: BoxFit.scaleDown,
            ),
          ),
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff0BA360),
                  Color(0xff3CBA92),
                ],
              ),
            ),
            child: SvgPicture.asset(
              'icons/ic_alien.svg',
              width: 32,
              height: 32,
              fit: BoxFit.scaleDown,
            ),
          ),
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffFF7EB3),
                  Color(0xffFF758C),
                ],
              ),
            ),
            child: SvgPicture.asset(
              'icons/ic_human.svg',
              width: 32,
              height: 32,
              fit: BoxFit.scaleDown,
            ),
          )
        ],
      ),
    );
  }
}
