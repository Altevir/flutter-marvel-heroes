import 'package:flutter/material.dart';

import 'package:flutter_marvel_heroes/constants/constants.dart';
import 'package:flutter_marvel_heroes/models/character.dart';
import 'package:flutter_marvel_heroes/widgets/detail_page/ability_section.dart';
import 'package:flutter_marvel_heroes/widgets/detail_page/info_section.dart';
import 'package:flutter_marvel_heroes/widgets/detail_page/movies_section.dart';

class CharacterDetailPage extends StatefulWidget {
  const CharacterDetailPage({
    super.key,
    required this.character,
  });

  final Character character;

  @override
  State<CharacterDetailPage> createState() => _CharacterDetailPageState();
}

class _CharacterDetailPageState extends State<CharacterDetailPage>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;
  late final AnimationController _animationControllerTitle;
  late final Animation<double> _animation;
  late final Animation<double> _animationTitle;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1800),
      vsync: this,
    )..forward();

    _animation =
        Tween<double>(begin: 1.3, end: 1).animate(_animationController);

    _animationControllerTitle = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..forward();

    _animationTitle =
        Tween<double>(begin: 0, end: 1).animate(_animationControllerTitle);
  }

  @override
  void dispose() {
    _animationController.dispose();
    _animationControllerTitle.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final showAbility = widget.character.ability != null;

    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ScaleTransition(
              scale: _animation,
              child: Image.asset(
                'images/${widget.character.image}',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ],
                  stops: [0.3, 0.8],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 352,
                right: 24,
                bottom: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ScaleTransition(
                    scale: _animationTitle,
                    child: Text(
                      widget.character.personName,
                      style: TextStyle(
                        fontFamily: AppSettings.fontGilroyMedium,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ScaleTransition(
                    scale: _animationTitle,
                    child: SizedBox(
                      width: 180,
                      child: Text(
                        widget.character.name,
                        style: TextStyle(
                          fontFamily: AppSettings.fontGilroyHeavy,
                          fontSize: 40,
                          color: Colors.white,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  InfoSection(character: widget.character),
                  Visibility(
                    visible: showAbility,
                    child: Text(
                      'Habilidades',
                      style: TextStyle(
                        fontFamily: AppSettings.fontGilroyBold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: showAbility,
                    child: AbilitySection(
                      title: 'Força',
                      habilityValue: widget.character.ability?.strength ?? 0,
                    ),
                  ),
                  Visibility(
                    visible: showAbility,
                    child: AbilitySection(
                      title: 'Inteligência',
                      habilityValue:
                          widget.character.ability?.intelligence ?? 0,
                    ),
                  ),
                  Visibility(
                    visible: showAbility,
                    child: AbilitySection(
                      title: 'Agilidade',
                      habilityValue: widget.character.ability?.agility ?? 0,
                    ),
                  ),
                  Visibility(
                    visible: showAbility,
                    child: AbilitySection(
                      title: 'Resistência',
                      habilityValue: widget.character.ability?.resistance ?? 0,
                    ),
                  ),
                  Visibility(
                    visible: showAbility,
                    child: AbilitySection(
                      title: 'Velocidade',
                      habilityValue: widget.character.ability?.velocity ?? 0,
                    ),
                  ),
                  if (widget.character.movies != null)
                    MovieSection(movies: widget.character.movies),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
