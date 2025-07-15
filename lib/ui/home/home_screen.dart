import 'package:br_movies/ui/home/home_screen_image.dart';
import 'package:br_movies/ui/home/horiz_movies.dart';
import 'package:br_movies/ui/home/title_row.dart';
import 'package:flutter/material.dart';

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
      body: Column(children: [Align( alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,16.0,0,20 ),
            child: Text('Essabr w Barra'),
          ))
        ,HomeScreenImage()
        ,TitleRow(text: 'Trending', onMoreClicked: (){}),
        HorizontalMovies()
        ,TitleRow(text: 'Trending', onMoreClicked: (){}),HorizontalMovies()
      ],
      ),
    ),
  );
  }
}