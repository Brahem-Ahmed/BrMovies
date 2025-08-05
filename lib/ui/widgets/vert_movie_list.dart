import 'package:br_movies/ui/widgets/movie_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef OnMovieTap = void Function(int movieId);

class VerticalMovieList extends ConsumerWidget {
  final OnMovieTap onMovieTap;
  final  List<String> movies; // Changed from dynamic to explicit type

  const VerticalMovieList({
    super.key,
    required this.movies,
    required this.onMovieTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Remove redundant provider watch since movies are passed as parameter
    if (movies.isEmpty) {
      return const SliverToBoxAdapter(
        child: Center(child: Text('No movies available')),
      );
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) => MovieRow(
          movie: movies[index],

        ),
        childCount: movies.length,
      ),
    );
  }
}