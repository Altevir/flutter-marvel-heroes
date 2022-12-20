import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_marvel_heroes/constants/constants.dart';
import 'package:flutter_marvel_heroes/models/character.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    super.key,
    required this.character,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 32,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SvgPicture.asset(
                      'icons/ic_age.svg',
                      width: 24,
                      height: 24,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      '${character.age.toString()} anos',
                      style: TextStyle(
                        fontFamily: AppSettings.fontGilroyMedium,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'icons/ic_weight.svg',
                      width: 24,
                      height: 24,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      '${character.weight?.toStringAsFixed(0)}kg',
                      style: TextStyle(
                        fontFamily: AppSettings.fontGilroyMedium,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'icons/ic_height.svg',
                      width: 24,
                      height: 24,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      '${character.height?.toStringAsFixed(2)}m',
                      style: TextStyle(
                        fontFamily: AppSettings.fontGilroyMedium,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'icons/ic_universe.svg',
                      width: 24,
                      height: 24,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      character.universe,
                      style: TextStyle(
                        fontFamily: AppSettings.fontGilroyMedium,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Text(
            character.description ?? '',
            style: TextStyle(
              fontFamily: AppSettings.fontGilroyMedium,
              fontSize: 14,
              color: Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
