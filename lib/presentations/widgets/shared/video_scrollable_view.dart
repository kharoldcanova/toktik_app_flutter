import 'package:flutter/material.dart';
import 'package:toktik_app_flutter/domain/entities/video_post.dart';
import 'package:toktik_app_flutter/presentations/widgets/shared/video/fullscreen_player.dart';
import 'package:toktik_app_flutter/presentations/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            //VideoPlayer + Gradient
             SizedBox.expand(
              child: FullScreenPlayer(
                videoUrl: videoPost.videoUrl,
                caption: videoPost.caption
              ),
            ),
            //button
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost))
          ],
        );
      },
    );
  }
}
