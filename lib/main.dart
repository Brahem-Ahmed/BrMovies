import 'package:br_movies/ui/main_screen.dart';
import 'package:br_movies/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() => _MainAppState();

}

class _MainAppState extends State<MainApp>{
  @override
  Widget build(BuildContext context) {
  //final brightness = View.of(context).platformDispatcher.platformBrightness;
  final materialTheme = MaterialTheme(TextTheme(
    displayLarge: TextStyle(fontSize: 57.0, fontWeight: FontWeight.w400),
    displayMedium: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w400),
    displaySmall: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w400),
  )
  );
  return  MaterialApp(
        theme: materialTheme.light(),
        darkTheme: materialTheme.dark(),
        themeMode: ThemeMode.system,
        title: 'BrMovies',
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      );
  }

}

