import 'package:br_movies/data/models/movie.dart';
import 'package:br_movies/data/models/movie_response.dart';
import 'package:br_movies/data/models/movie_results.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../widgets/movie_widget.dart';

class HorizontalMovies extends StatelessWidget{
  final MovieType movieType;
  final OnMovieTap onMovieTap;
  final List<MovieResults> movies;

  const HorizontalMovies({super.key, required this.movieType, required this.onMovieTap, required this.movies});


  @override
  Widget build(BuildContext context)  {

    return SizedBox(height: 142,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (context, index){
                final imageUrl = getImageUrl(ImageSize.small, movies[index].posterPath);
                return MovieWidget(
                  onMovieTap: onMovieTap,
                  movieType: movieType, movieId: movies[index].id, movieUrl: imageUrl,);
              }

            )
          );
  }

}