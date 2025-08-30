
import 'package:br_movies/providers.dart';
import 'package:br_movies/utils/utils.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../movie_viewmodel.dart';

const delayTime = 1000*10;
const animationTime = 1000;


class HomeScreenImage extends ConsumerWidget {
  final MovieViewModel movieViewModel;
  final OnMovieTap onMovieTap;
  const HomeScreenImage({required this.movieViewModel,
    required this.onMovieTap, super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //1
    final screenWidth = MediaQuery.of(context).size.width -32;
    //2
    return SizedBox(
      height: 232,
      //3
      child: Swiper(autoplayDelay: delayTime,
        duration: animationTime,
        autoplay: true,
          //4
        itemCount: movieViewModel.nowPlayingMovies.length,
        itemBuilder: (BuildContext context, int index) {
          final currentMovie = movieViewModel.nowPlayingMovies[index];
          String uniqueHeroTag = '${currentMovie.posterPath}swiper';
          String imageUrl = 'http://image.tmdb.org/t/p/w780${currentMovie.posterPath}';

          // 5
      return GestureDetector(
        onTap: () {
          ref.read(heroTagProvider.notifier).state = uniqueHeroTag;
          onMovieTap(currentMovie.id);
        },
        child: Hero(
          tag: uniqueHeroTag,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            alignment: Alignment.topCenter,
            fit: BoxFit.fitHeight,
            height: 232,
            width: screenWidth,

          ),
        ),
      );
        },
      ),
    );
  }
}