import 'package:br_movies/ui/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() => _MainAppState();

}

class _MainAppState extends State<MainApp>{
  @override
  Widget build(BuildContext context) {
      return const MaterialApp(
        title: 'BrMovies',
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      );
  }

}

