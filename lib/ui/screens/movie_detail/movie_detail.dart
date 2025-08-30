
import 'package:auto_route/auto_route.dart';
import 'package:br_movies/data/models/movie_details.dart';
import 'package:br_movies/ui/screens/movie_detail/trailer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lumberdash/lumberdash.dart';

import '../../../data/models/movie.dart';
import '../../../providers.dart';
import '../../movie_viewmodel.dart';
import '../../router/app_routes.dart';
import '../../theme/theme.dart';
import '../../widgets/horizental_cast.dart';
import '../../widgets/not_ready.dart';
import '../genres/genre_section.dart';
import 'button_row.dart';
import 'detail_image.dart';
import 'genre_row.dart';
import 'movie_overview.dart';

@RoutePage(name: 'MovieDetailRoute')
class MovieDetail extends ConsumerStatefulWidget {
  final int movieId;

  const MovieDetail(@PathParam('movieId') this.movieId, {super.key});

  @override
  ConsumerState<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends ConsumerState<MovieDetail> {
  final favoriteNotifier = ValueNotifier<bool>(false);
  late MovieViewModel movieViewModel;


  @override
  Widget build(BuildContext context) {
    final movieViewModelAsync = ref.watch(movieViewModelProvider);
    return movieViewModelAsync.when(
      error: (e, st) => Text(e.toString()),
      loading: () => const NotReady(),
      data: (viewModel) {
        movieViewModel = viewModel;
      //  currentMovie = movieViewModel.findMovieById(widget.movieId);
        return buildScreen();
      },
    );
  }


  Widget buildScreen() {
    return FutureBuilder(future: loadData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const NotReady();
          }
          if (snapshot.hasError) {
            logMessage('Error: ${snapshot.error.toString()}');
            return Text(snapshot.error.toString());
          }
          final movieDetails = snapshot.data as MovieDetails?;
          if (movieDetails == null) {
            return const NotReady();
          }

          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: screenBackground,
                leading: BackButton(
                  color: Colors.white,
                  onPressed: () {
                    context.router.maybePopTop();
                  },
                ),
                centerTitle: false,
                title:
                Text('Back', style: Theme
                    .of(context)
                    .textTheme
                    .headlineMedium),
              ),
              body: Container(
                color: screenBackground,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: CustomScrollView(slivers: [
                        SliverList(
                          delegate: SliverChildListDelegate([
                            Stack(children: [
                              DetailImage(details: movieDetails,)
                            ]),
                            GenreRow(genres: movieDetails.genres),
                             MovieOverview(details: movieDetails,),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, bottom: 8),
                              child: Text('Trailers', style: Theme
                                  .of(context)
                                  .textTheme
                                  .headlineLarge),
                            ),
                            Trailer(
                              movieVideos: const [
                                'https://img.youtube.com/vi/U2Qp5pL3ovA/hqdefault.jpg'
                              ],
                              onVideoTap: (video) {
                                context.router
                                    .push(
                                    VideoPageRoute(
                                      movieVideoUrl: 'U2Qp5pL3ovA',));
                              },
                            ),

                          ]
                          ),
                        ),
                        const HorizontalCast(castList: ['', '']),
                      ]),
                    )
                  ],
                ),
              ),
            ),
          );
        },
    );
  }

 Future loadData() async {
    return movieViewModel.getMovieDetails(widget.movieId);
 }
}