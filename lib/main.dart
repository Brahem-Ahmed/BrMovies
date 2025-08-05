
import 'package:br_movies/providers.dart';
import 'package:br_movies/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends ConsumerStatefulWidget{
  const MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();

}

class _MainAppState extends ConsumerState<MainApp> {
  final mytheme =MaterialTheme(TextTheme(
    displayLarge: largeTitle,
    headlineMedium: heading1,
    headlineSmall: heading2,
    bodyLarge: body1Regular,
    titleMedium: body1Bold,
    bodyMedium: body2Regular,
    titleSmall: body2Bold,
    bodySmall: caption,
    labelSmall: body3Regular,
    labelLarge: body3Bold,
  )).dark();
  @override
  Widget build(BuildContext context ) {
    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      routerConfig: router.config(),
      title: 'Movies',
      debugShowCheckedModeBanner: false,
      theme: mytheme,
    );
}


}

