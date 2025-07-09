import 'package:br_movies/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget{
  const MainScreen ({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}


class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
        return const HomeScreen();
  }
}
