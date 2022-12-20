import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:flutter_marvel_heroes/constants/constants.dart';
import 'package:flutter_marvel_heroes/repositories/movie_repository.dart';
import 'package:flutter_marvel_heroes/widgets/main_page/app_bar_main.dart';
import 'package:flutter_marvel_heroes/widgets/main_page/avatar_section.dart';
import 'package:flutter_marvel_heroes/widgets/main_page/header_section.dart';
import 'package:flutter_marvel_heroes/widgets/main_page/list_character.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 3000),
    ).then(
      (value) => FlutterNativeSplash.remove(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final listHeroes = MovieRepository.heroes;
    final listVillains = MovieRepository.villains;
    final listAntiHeroes = MovieRepository.antiHeroes;
    final listAliens = MovieRepository.aliens;
    final listHumans = MovieRepository.humans;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarMain(
        height: 64,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(
                title: 'Bem vindo ao Marvel Heroes',
                subtitle: 'Escolha o seu\npersonagem',
                fontFamilyTitle: AppSettings.fontGilroyMedium,
                fontSizeTitle: 14,
                colorTitle: const Color(0xffB7B7C8),
                fontFamilySubtitle: AppSettings.fontGilroyHeavy,
                fontSizeSubtitle: 32,
                colorSubtitle: const Color(0xff313140),
              ),
              const AvatarSection(),
              Column(
                children: [
                  ListCharacter(
                    title: 'Heróis',
                    listCharacter: listHeroes,
                  ),
                  ListCharacter(
                    title: 'Vilões',
                    listCharacter: listVillains,
                  ),
                  ListCharacter(
                    title: 'Anti-heróis',
                    listCharacter: listAntiHeroes,
                  ),
                  ListCharacter(
                    title: 'Alienígenas',
                    listCharacter: listAliens,
                  ),
                  ListCharacter(
                    title: 'Humanos',
                    listCharacter: listHumans,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
