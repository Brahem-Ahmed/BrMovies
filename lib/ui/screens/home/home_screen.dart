import 'package:auto_route/auto_route.dart';
import 'package:br_movies/data/models/movie_response.dart';
import 'package:br_movies/providers.dart';
import 'package:br_movies/ui/screens/home/title_row.dart';
import 'package:br_movies/ui/theme/theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/movie.dart';
import '../../movie_viewmodel.dart';
import '../../router/app_routes.dart';
import '../../widgets/movie_widget.dart';
import '../../widgets/not_ready.dart';
import 'home_screen_image.dart';
import 'horiz_movies.dart';
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
  late MovieViewModel movieViewModel;
  Future<List<MovieResponse?>>? movieFuture;
  @override
  Widget build(BuildContext context) {
    final movieViewModelAsync = ref.watch(movieViewModelProvider);
    return movieViewModelAsync.when(
      error: (e, st) => Text(e.toString()),
      loading: () => const NotReady(),
      data: (viewModel) {
        movieViewModel = viewModel;
        return buildScreen();
      },
    );
  }
    Widget buildScreen() {
      return SafeArea(
        child: Scaffold(
          body: FutureBuilder(
            future: loadData(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if ((snapshot.connectionState != ConnectionState.active) &&
                  (snapshot.connectionState != ConnectionState.done)) {
                return NotReady();
              }

            return SingleChildScrollView(
              child: Column(
                children: [
                  Align(alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 20),
                        child: Text('BrMovies',style: largeTitle,),
                      )), Align(alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16.0, 0, 20),
                          child: Text('Now Playing', style: Theme.of(context).textTheme.headlineMedium,),
                        ),
                      )
                  ,
                  HomeScreenImage(
                    movieViewModel: movieViewModel,
                      onMovieTap: (movieId) {
                        context.router.push(MovieDetailRoute(movieId: movieId));
                      })
                  ,
                  TitleRow(text: 'Popular', onMoreClicked: () {}),
                  HorizontalMovies(movies: movieViewModel.popularMovies,
                    onMovieTap: onMovieTap, movieType:
                    MovieType.Popular,)
                  ,
                  TitleRow(text: 'Trending', onMoreClicked: () {}),
                  HorizontalMovies(movies: movieViewModel.trendingMovies,
                    onMovieTap: onMovieTap, movieType:
                    MovieType.Trending,)
                ],
              ),
            );}
          ),
        ),
      );
    }

  Future loadData() async {
    movieFuture ??= Future.wait([
      movieViewModel.getTrendingMovies(1),
      movieViewModel.getTopRated(1),
      movieViewModel.getPopular(1),
      movieViewModel.getNowPlaying(1),
    ]);
    return movieFuture;
  }
  }


