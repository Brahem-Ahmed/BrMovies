import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers.dart';
import '../../../utils/utils.dart';

class DetailImage extends ConsumerStatefulWidget {
  final String movieUrl;
  const DetailImage( {required this.movieUrl,super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DetailImageState();
  }

class _DetailImageState extends ConsumerState<DetailImage> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this );
  @override
  void initState() {
    super.initState();
    _animationController.forward();
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  late final Animation<double> _animation = CurvedAnimation(parent: _animationController,
      curve: Curves.easeIn);
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final heroTag = ref.watch(heroTagProvider);
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: SizedBox(height: 200,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: FadeTransition(
                opacity: _animation,
                child: Hero(
                  tag: heroTag,
                  child: CachedNetworkImage(
                    imageUrl: widget.movieUrl
                    ,
                    width: screenWidth,
                    fit: BoxFit.fitWidth,
                    height: 200,
                    placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0,
                    bottom: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dune',
                      style:
                      Theme
                          .of(context)
                          .textTheme
                          .displayLarge,
                    ),
                    addVerticalSpace(4),
                    Text(
                      '2024',
                      style:
                      Theme
                          .of(context)
                          .textTheme
                          .labelLarge,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}