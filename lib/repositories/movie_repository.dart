import 'package:flutter_marvel_heroes/models/ability.dart';
import 'package:flutter_marvel_heroes/models/character.dart';
import 'package:flutter_marvel_heroes/models/movie.dart';

class MovieRepository {
  static List<Character> heroes = [
    Character(
      personName: 'Peter Parker',
      name: 'Homem Aranha',
      age: 30,
      weight: 78,
      height: 1.80,
      universe: 'Terra 616',
      description:
          'Em Forest Hills, Queens, Nova York, o estudante de ensino médio, Peter Parker, é um cientista orfão que vive com seu tio Ben e tia May. Ele é mordido por uma aranha radioativa em uma exposição científica e adquire a agilidade e a força proporcional de um aracnídeo. Junto com a super força, Parker ganha a capacidade de andar nas paredes e tetos.\n\nAtravés de sua habilidade nativa para a ciência, ele desenvolve um aparelho que o permitir lançar teias artificiais.Inicialmente buscando capitalizar suas novas habilidades, Parker cria um traje e, como Homem Aranha, torna - se uma estrela de televisão.',
      image: 'spiderman_background.png',
      ability: Ability(
        strength: 45,
        intelligence: 35,
        agility: 40,
        resistance: 30,
        velocity: 40,
      ),
      movies: [
        Movie(image: 'captain_america_3.png'),
        Movie(image: 'spiderman_homecoming.png'),
        Movie(image: 'avengers4.png'),
      ],
    ),
    Character(
      personName: 'T\'challa',
      name: 'Pantera Negra',
      age: 47,
      weight: 91,
      height: 1.83,
      universe: 'Terra 616',
      description:
          'O Pantera Negra é o título cerimonial atribuído ao chefe da Tribo Pantera da avançada nação africana de Wakanda. Além de governar o país, ele também é chefe de suas várias tribos (coletivamente conhecida como Wakandas). O uniforme do Pantera é um símbolo oficial (chefe de estado) e é usado mesmo durante missões diplomáticas. O Pantera é um título hereditário, mas ainda é preciso ganhar um desafio.\n\nNo passado distante, um enorme meteorito maciço composto de vibranium - elemento que absorve o som, entre outras propriedades especiais - caiu em Wakanda, e é desenterrado uma geração antes dos eventos do presente.',
      image: 'black_panther_background.png',
      ability: Ability(
        strength: 30,
        intelligence: 28,
        agility: 49,
        resistance: 28,
        velocity: 45,
      ),
      movies: [
        Movie(image: 'black_panther.png'),
        Movie(image: 'captain_america_3.png'),
        Movie(image: 'avengers4.png'),
      ],
    ),
    Character(
      personName: 'Tony Stark',
      name: 'Homem de Ferro',
      age: 50,
      weight: 102,
      height: 1.85,
      universe: 'Terra 616',
      description:
          'Durante a guerra do Vietnã, o inventor e empresário Tony Stark foi vítima de uma explosão de granada. Stark sobreviveu à explosão mas estilhaços do explosivo se alojaram próximo ao seu coração, ameaçando sua vida. Ele foi capturado e levado até o líder Wong Chu, que o forçou a criar uma poderosa arma, mas ele criou algo que o mantivesse vivo e permitisse derrotar os captores.\n\nO Homem de Ferro enfrentou os soldados e os derrotou.Sua armadura resistia aos disparos contra ele.Wong Chu tentou fugir e o Homem de Ferro incendiou o galpão de munições fazendo com que a explosão o matasse.',
      image: 'iron_man_background.png',
      ability: Ability(
        strength: 40,
        intelligence: 45,
        agility: 38,
        resistance: 30,
        velocity: 42,
      ),
      movies: [
        Movie(image: 'black_panther.png'),
        Movie(image: 'captain_america_3.png'),
        Movie(image: 'avengers4.png'),
      ],
    ),
  ];

  static List<Character> villains = [
    Character(
      name: 'Caveira vermelha',
      personName: 'Jöhann Schmidt',
      universe: 'Terra 999',
      image: 'red_skull_background.png',
    ),
    Character(
      name: 'Doutor Destino',
      personName: 'Victor Von Doom',
      universe: 'Terra 999',
      image: 'dr_doom_background.png',
    ),
    Character(
      name: 'Duende Verde',
      personName: 'Norman Osborn',
      universe: 'Terra 999',
      image: 'green_goblin_background.png',
    ),
  ];

  static List<Character> antiHeroes = [
    Character(
      name: 'Deadpool',
      personName: 'Wade Wilson',
      universe: 'Terra 999',
      image: 'deadpool_background.png',
    ),
    Character(
      name: 'Venom',
      personName: 'Eddie Brock',
      universe: 'Terra 999',
      image: 'venom_background.png',
    ),
    Character(
      name: 'Justiceiro',
      personName: 'Francis Castle',
      universe: 'Terra 999',
      image: 'punisher_background.png',
    ),
  ];

  static List<Character> aliens = [
    Character(
      name: 'Thanos',
      personName: 'Deviant',
      universe: 'Terra 999',
      image: 'thanos_background.png',
    ),
    Character(
      name: 'Ronan',
      personName: 'Kree',
      universe: 'Terra 999',
      image: 'ronan_background.png',
    ),
    Character(
      name: 'Talos',
      personName: 'Skrull',
      universe: 'Terra 999',
      image: 'talos_background.png',
    ),
  ];

  static List<Character> humans = [
    Character(
      name: 'Howard Stark',
      personName: 'Homem de Ferro',
      universe: 'Terra 999',
      image: 'howard_stark_background.png',
    ),
    Character(
      name: 'Mary Jane',
      personName: 'Homem Aranha',
      universe: 'Terra 999',
      image: 'mary_jane_background.png',
    ),
    Character(
      name: 'Happy Hogan',
      personName: 'Homem de ferro',
      universe: 'Terra 999',
      image: 'happy_hogan_background.png',
    ),
  ];
}
