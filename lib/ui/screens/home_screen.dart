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
      body: Container( color: const Color(0xFF111111) ,
        child: Column(children: [Align( alignment: Alignment.center,
            child: Text('Hello World', style: TextStyle(color: Colors.blue, fontSize: 52 ),))],),
      ),
    ),
  );
  }
}