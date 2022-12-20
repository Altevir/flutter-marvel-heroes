import 'package:flutter_marvel_heroes/models/ability.dart';
import 'package:flutter_marvel_heroes/models/movie.dart';

class Character {
  String name;
  String personName;
  int? age;
  double? weight;
  double? height;
  String universe;
  String? description;
  String image = '';
  Ability? ability;
  List<Movie>? movies;

  Character({
    required this.name,
    required this.personName,
    this.age,
    this.weight,
    this.height,
    required this.universe,
    this.description,
    required this.image,
    this.ability,
    this.movies,
  });
}
