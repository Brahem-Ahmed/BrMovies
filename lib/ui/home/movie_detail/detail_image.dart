import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: SizedBox(height: 200,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: CachedNetworkImage(
                  imageUrl: 'https://image.tmdb.org/t/p/w500/7bcndiaTgu1Kj5a6qyCmsWYdtI.jpg'
                ,width: screenWidth,
                fit: BoxFit.fitWidth,
                height: 200,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
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
                  Theme.of(context).textTheme.displayLarge,
                ),
                addVerticalSpace(4),
                Text(
                  '2024',
                  style:
                  Theme.of(context).textTheme.labelLarge,
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