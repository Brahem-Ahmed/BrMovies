import 'package:auto_route/auto_route.dart';
import 'package:br_movies/providers.dart';
import 'package:br_movies/ui/home/home_screen_image.dart';
import 'package:br_movies/ui/home/horiz_movies.dart';
import 'package:br_movies/ui/home/title_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../router/app_routes.dart';
import '../widgets/movie_widget.dart';
@RoutePage(name: 'HomeRoute')
class HomeScreen extends ConsumerStatefulWidget{
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState  extends ConsumerState<HomeScreen> {

  void onMovieTap(int movieId) {
    context.router.push(MovieDetailRoute(movieId:
    movieId));
  }
  @override
  Widget build(BuildContext context) {
    final movies = ref.read(movieImagesProvider);

    return SafeArea(
    child: Scaffold(
      body: ListView(
        children: [Align( alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,16.0,0,20 ),
            child: Text('BrMovies'),
          ))
        ,HomeScreenImage(onMovieTap: (id) {
      context.router.push(MovieDetailRoute(movieId: id));})
        ,
        TitleRow(text: 'Trending', onMoreClicked: (){}),
        HorizontalMovies(movies: movies,
          onMovieTap: onMovieTap, movieType:
          MovieType.Trending,)
        ,TitleRow(text: 'Trending', onMoreClicked: (){}),HorizontalMovies(movies: movies,
            onMovieTap: onMovieTap, movieType:
            MovieType.Trending,)
      ],
      ),
    ),
  );
  }
}
