
import 'package:br_movies/providers.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const delayTime = 1000*10;
const animationTime = 1000;


class HomeScreenImage extends ConsumerWidget {
  const HomeScreenImage({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final images = ref.watch(movieImagesProvider);
    //1
    final screenWidth = MediaQuery.of(context).size.width -32;
    //2
    return SizedBox(
      height: 232,
      //3
      child: Swiper(autoplayDelay: delayTime,
        duration: animationTime,
        autoplay: true,
        //4
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
      // 5
      return CachedNetworkImage(
        imageUrl: images[index],
        alignment: Alignment.topCenter,
        fit: BoxFit.fitHeight,
        height: 232,
        width: screenWidth,

      );
        },
      ),
    );
  }
}