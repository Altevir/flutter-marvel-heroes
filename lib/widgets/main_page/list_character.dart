import 'package:flutter/material.dart';

import 'package:flutter_marvel_heroes/constants/constants.dart';
import 'package:flutter_marvel_heroes/models/character.dart';
import 'package:flutter_marvel_heroes/pages/character_detail_page.dart';

class ListCharacter extends StatelessWidget {
  const ListCharacter({
    super.key,
    required this.title,
    required this.listCharacter,
  });

  final String title;
  final List<Character> listCharacter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: const Color(0xffF2264B),
                  fontFamily: AppSettings.fontGilroyBold,
                  fontSize: 18,
                ),
              ),
              Text(
                'Ver tudo',
                style: TextStyle(
                  color: const Color(0xffB7B7C8),
                  fontFamily: AppSettings.fontGilroyMedium,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 230,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listCharacter.length,
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {
                  var character = listCharacter[index];
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CharacterDetailPage(
                        character: character,
                      ),
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 16),
                      width: 140,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.asset(
                          'images/${listCharacter[index].image}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14, bottom: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            listCharacter[index].personName,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: AppSettings.fontGilroyMedium,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              listCharacter[index].name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: AppSettings.fontGilroyHeavy,
                                  fontSize: 20,
                                  height: 1),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
