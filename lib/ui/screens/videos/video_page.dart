import 'package:auto_route/annotations.dart';
import 'package:br_movies/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pod_player/pod_player.dart';

@RoutePage(name: 'VideoPageRoute')

class VideoPage extends ConsumerStatefulWidget{
  final String movieVideoUrl;
  const VideoPage(this.movieVideoUrl,{super.key});

  @override
  ConsumerState<VideoPage> createState() => _VideoPageState();

}

class _VideoPageState extends ConsumerState<VideoPage> {
      late final PodPlayerController podPlayerController;
      @override
      void initState() {
        super.initState();
        final playVideoFrom = PlayVideoFrom.youtube(youtubeUrlFromId(widget.movieVideoUrl));
      podPlayerController = PodPlayerController(
        playVideoFrom: playVideoFrom,
        podPlayerConfig: PodPlayerConfig(autoPlay: false))..initialise();
      }
      @override
      void dispose() {
        podPlayerController.dispose();
        super.dispose();
      }
  @override
  Widget build(BuildContext context) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight]);
    return getVideoPlayer(context);
  }

  Widget getVideoPlayer(BuildContext context){
        return Column( mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PodVideoPlayer(
                    controller: podPlayerController, matchVideoAspectRatioToFrame: true,
                  ),
            ),
          ],
        );
  }
}

