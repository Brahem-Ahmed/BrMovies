import 'package:br_movies/data/models/movie_details.dart';
import 'package:flutter/cupertino.dart';

import '../../theme/theme.dart';

class MovieOverview extends StatelessWidget {
  final MovieDetails details;

  const MovieOverview({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      child: Text(
        details.overview,
        style: body1Regular,
      ),
    );
  }
}