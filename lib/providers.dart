
import 'package:br_movies/network/movie_api_service.dart';
import 'package:br_movies/ui/movie_viewmodel.dart';
import 'package:br_movies/ui/router/app_routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';
@Riverpod(keepAlive: true)
MovieAPIService movieAPIService(Ref ref) => MovieAPIService();
@Riverpod(keepAlive: true)
Future<MovieViewModel> movieViewModel(Ref ref) async {
  final model = MovieViewModel(movieAPIService: ref.read(movieAPIServiceProvider));
  await model.setup();
 return model;}


final heroTagProvider = StateProvider<String>((ref) {
  return '';
});

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) =>
    AppRouter();
