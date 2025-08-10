import 'package:br_movies/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/utils.dart';
import '../widgets/movie_widget.dart';

class HorizontalMovies extends ConsumerWidget{
  final MovieType movieType;
  final OnMovieTap onMovieTap;
  final List<String> movies;

  const HorizontalMovies({super.key, required this.movieType, required this.onMovieTap, required this.movies});

  @override
  Widget build(BuildContext context,WidgetRef ref)  {
    final List<String> movies= ref.watch(movieImagesProvider) ;

    return SizedBox(height: 142,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (context, index){
                return MovieWidget(movieId: index,
                  movieUrl: movies[index],
                  onMovieTap: onMovieTap,
                  movieType: movieType,);
              }

            )
          );
  }

}