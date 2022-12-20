import 'package:flutter/material.dart';

import 'package:flutter_marvel_heroes/constants/constants.dart';
import 'package:flutter_marvel_heroes/models/movie.dart';

class MovieSection extends StatelessWidget {
  const MovieSection({
    super.key,
    required this.movies,
  });

  final List<Movie>? movies;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Filmes',
            style: TextStyle(
              fontFamily: AppSettings.fontGilroyBold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies!.length,
              itemBuilder: (_, index) {
                return Container(
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
                      'images/${movies![index].image}',
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
