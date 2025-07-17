import 'package:br_movies/providers.dart';
import 'package:br_movies/ui/widgets/movie_row.dart';
import 'package:br_movies/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


typedef OnMovieTap = void Function(int movieId);
class VerticalMovieList extends ConsumerWidget{
  final OnMovieTap onMovieTap;

  final dynamic movies;

  const VerticalMovieList({super.key, required this.movies, required this.onMovieTap});


  @override
  Widget build(BuildContext context , WidgetRef ref) {
     var movies = ref.watch(movieImagesProvider);
   return Expanded(
     child: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return MovieRow(movie: movies[index]);
        }
      ),
   );
  }
  
}