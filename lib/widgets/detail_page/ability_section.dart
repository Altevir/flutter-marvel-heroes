import 'package:flutter/material.dart';

import 'package:flutter_marvel_heroes/constants/constants.dart';

class AbilitySection extends StatelessWidget {
  const AbilitySection(
      {super.key, required this.title, required this.habilityValue});

  final String title;
  final int habilityValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
      ),
      child: SizedBox(
        height: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: AppSettings.fontGilroyRegular,
                fontSize: 12,
                color: Colors.white,
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 50,
              itemBuilder: (_, index) {
                final itemIndex = index + 1;
                return Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: itemIndex == habilityValue ? 0 : 2,
                        bottom: itemIndex == habilityValue ? 0 : 2),
                    width: 1.8,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(6),
                      ),
                      color: itemIndex <= habilityValue
                          ? Colors.white
                          : Colors.grey.withOpacity(0.4),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
