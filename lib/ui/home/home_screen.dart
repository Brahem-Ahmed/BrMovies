import 'package:auto_route/auto_route.dart';
import 'package:br_movies/ui/home/home_screen_image.dart';
import 'package:br_movies/ui/home/horiz_movies.dart';
import 'package:br_movies/ui/home/title_row.dart';
import 'package:flutter/material.dart';

import '../router/app_routes.dart';
@RoutePage(name: 'HomeRoute')
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();

}

class _HomeScreenState  extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
        HorizontalMovies()
        ,TitleRow(text: 'Trending', onMoreClicked: (){}),HorizontalMovies()
      ],
      ),
    ),
  );
  }
}