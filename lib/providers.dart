
import 'package:br_movies/ui/movie_viewmodel.dart';
import 'package:br_movies/ui/router/app_routes.dart';
import 'package:br_movies/ui/screens/genres/genre_section.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import
'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
Future<MovieViewModel> movieViewModel(Ref ref) async {
  final model = MovieViewModel();
  await model.setup();
 return model;}


final heroTagProvider = StateProvider<String>((ref) {
  return '';
});

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) =>
    AppRouter();
