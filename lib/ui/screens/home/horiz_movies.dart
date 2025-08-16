import 'package:br_movies/data/models/movie.dart';
import 'package:br_movies/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/utils.dart';
import '../../widgets/movie_widget.dart';

class HorizontalMovies extends StatelessWidget{
  final MovieType movieType;
  final OnMovieTap onMovieTap;
  final List<Movie> movies;

  const HorizontalMovies({super.key, required this.movieType, required this.onMovieTap, required this.movies});


  @override
  Widget build(BuildContext context)  {

    return SizedBox(height: 142,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (context, index){
                return MovieWidget(movie: movies[index],
                  onMovieTap: onMovieTap,
                  movieType: movieType,);
              }

            )
          );
  }

}