import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

import '../main_screen.dart';
import '../screens/favorites/favorite_screen.dart';
import '../screens/genres/genre_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/movie_detail/movie_detail.dart';
import '../screens/videos/video_page.dart';

part 'app_routes.gr.dart';
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: '/', initial: true, page: MainRoute.page, children: [
      AutoRoute(path: 'screens', page: HomeRoute.page),
      AutoRoute(path: 'Genre', page: GenreRoute.page),
      AutoRoute(path: 'favorites', page: FavoriteRoute.page),
    ]),
   CustomRoute(page: MovieDetailRoute.page, maintainState: false, transitionsBuilder: TransitionsBuilders.slideBottom, durationInMilliseconds: 500,),
   CustomRoute(page: VideoPageRoute.page, maintainState: false, transitionsBuilder: TransitionsBuilders.slideRight, durationInMilliseconds: 500,),


  ];
}