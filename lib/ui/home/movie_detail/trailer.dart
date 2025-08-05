import 'package:auto_size_text/auto_size_text.dart';
import 'package:br_movies/utils/utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Trailer extends ConsumerStatefulWidget {
  final List<String>? movieVideos;
  final OnMovieVideoTap onVideoTap;

  const Trailer( {this.movieVideos, required this.onVideoTap,super.key});
  @override
  ConsumerState<Trailer> createState() => _TrailerDetailState();
  
}

class _TrailerDetailState extends ConsumerState<Trailer>{
  @override
  Widget build(BuildContext context) {
// 1
    if (widget.movieVideos == null) {
      return Container();
    }
    return Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
// 2
        child: SizedBox(
            height: 120,
// 3
            child: ListView.builder(
                itemExtent: 166,
                scrollDirection: Axis.horizontal,
// Ensure horizontal scrolling within the list
                itemCount: widget.movieVideos!.length,
                itemBuilder: (context, index) {
                  final movieVideo = widget.movieVideos![index];
// 4
                  return GestureDetector(
                    onTap: () {
                      widget.onVideoTap(movieVideo);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0, right:
                      4.0),
                      child: SizedBox(
                        width: 166,
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CachedNetworkImage(
                                httpHeaders: const {'Access-Control-Allow-Origin': '*'},
                                  imageUrl: movieVideo,
                                  alignment: Alignment.topLeft,
                                  // fit: BoxFit.fitWidth,
                                  fit: BoxFit.fitHeight,
                                  height: 98,
                            ),
// 6
                            AutoSizeText(
                              'Dune',
                              style:
                              Theme.of(context).textTheme.labelSmall,
                              maxLines: 1,
                              minFontSize: 10,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                  ),
                  ),
                  );
  }
}