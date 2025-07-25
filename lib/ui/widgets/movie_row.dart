import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class MovieRow extends StatelessWidget {
  final String movie;

  const MovieRow({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    if(movie.isNotEmpty){
       return GestureDetector(
      onTap: () => {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 140,
// 2
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              addHorizontalSpace(16),
// 3
              SizedBox(
                height: 142,
                width: 100,
// 4
                child: CachedNetworkImage(
                  imageUrl: movie,
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                  height: 142,
                  width: 100,
                ),
              ),
              addHorizontalSpace(16),
// 5
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const Spacer(),
// 6
                  AutoSizeText(
                    'Title',
                    maxLines: 1,
                    minFontSize: 10,
                    style:
                    Theme
                        .of(context)
                        .textTheme
                        .labelLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  addVerticalSpace(4),
                  Text(
                    '1979',
                    style:
                    Theme
                        .of(context)
                        .textTheme
                        .bodyMedium,
                  ),
                  addVerticalSpace(4),
                ],
              ),
            ],
          ),
        ),
      ),
    );}
    else {
      return Container();
    }
  }

}