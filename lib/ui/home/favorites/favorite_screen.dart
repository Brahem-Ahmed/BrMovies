
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
@RoutePage(name: 'FavoriteRoute')
class FavoriteScreen extends ConsumerStatefulWidget {
  const FavoriteScreen({super.key});
  @override
  ConsumerState<FavoriteScreen> createState() =>
      _FavoriteScreenState();
}
class _FavoriteScreenState extends ConsumerState<FavoriteScreen> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation<double> opacity;
  late Animation<double> width;
  late Animation<double> height;
  late Animation<EdgeInsets> padding;
  late Animation<BorderRadius?> borderRadius;
  late Animation<Color?> color;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    opacity = Tween<double>(begin: 0.0, end: 1.0).animate( CurvedAnimation( parent: _animationController,
        curve: const Interval(0.0, 0.100,
      curve: Curves.ease,)
      ,)
      );
    width = Tween<double>(begin: 0.0, end: 200.0).animate( CurvedAnimation( parent: _animationController,
        curve: const Interval(0.100, 0.200,
      curve: Curves.ease,)
      ,)
      );
    height = Tween<double>(begin: 0.0, end: 200.0).animate( CurvedAnimation( parent: _animationController, curve: const Interval(0.200, 0.300,curve: Curves.ease,)
      ,)
      ,);
    padding = Tween<EdgeInsets>(begin: const EdgeInsets.all(0.0), end: const EdgeInsets.all(8.0)).animate( CurvedAnimation( parent: _animationController, curve: const Interval(0.300, 0.400,curve: Curves.ease,)),);
    borderRadius = BorderRadiusTween(begin: BorderRadius.circular(0.0), end: BorderRadius.circular(10.0)).animate( CurvedAnimation( parent: _animationController, curve: const Interval(0.400, 0.500,curve: Curves.ease,)),);
    color = ColorTween(begin: const Color(0xFF0D47A1), end: const Color(0xFFB71C1C)).animate( CurvedAnimation( parent: _animationController, curve: const Interval(0.500, 0.600,curve: Curves.ease,)),);
 


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered Animation'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
// 1
        onTap: () async {
          try {
            await _animationController
                .forward()
                .orCancel;
            await _animationController
                .reverse()
                .orCancel;
          } on TickerCanceled {
// The animation got canceled, probably because were disposed.
          }
        },
        child: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(26),
              border: Border.all(
                color: Colors.black.withAlpha(126),
              ),
            ),
// 2
            child: AnimatedBuilder(
              builder: (BuildContext context, Widget? child) {
                return Container(
                  padding: padding.value,
                  alignment: Alignment.bottomCenter,
                  child: Opacity(
                    opacity: opacity.value,
                    child: Center(
                      child: Container(
                        width: width.value,
                        height: height.value,
                        decoration: BoxDecoration(
                          color: color.value,
                          border: Border.all(
                            color: Colors.indigo[300]!,
                            width: 3,
                          ),
                          borderRadius: borderRadius.value,
                        ),
                      ),
                    ),
                  ),
                );
              },
              animation: _animationController,
            ),
          ),
        ),
      ),
    );
  }
}