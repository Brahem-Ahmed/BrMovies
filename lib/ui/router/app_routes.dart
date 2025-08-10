import 'package:auto_route/auto_route.dart';
import 'package:br_movies/ui/home/movie_detail/movie_detail.dart';
import 'package:flutter/material.dart';

import '../home/favorites/favorite_screen.dart';
import '../home/genres/genre_screen.dart';
import '../home/home_screen.dart';
import '../home/videos/video_page.dart';
import '../main_screen.dart';

part 'app_routes.gr.dart';
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: '/', initial: true, page: MainRoute.page, children: [
      AutoRoute(path: 'home', page: HomeRoute.page),
      AutoRoute(path: 'Genre', page: GenreRoute.page),
      AutoRoute(path: 'favorites', page: FavoriteRoute.page),
    ]),
   CustomRoute(page: MovieDetailRoute.page, maintainState: false, transitionsBuilder: TransitionsBuilders.slideBottom, durationInMilliseconds: 500,),
   CustomRoute(page: VideoPageRoute.page, maintainState: false, transitionsBuilder: TransitionsBuilders.slideRight, durationInMilliseconds: 500,),


  ];
}