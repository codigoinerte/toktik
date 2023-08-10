import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';
import 'package:toktik/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        
        final VideoPost video = videos[index];

        return Stack(
          children: [
            //video Player + gradiente
            SizedBox.expand(
              child: FullScreenPlayer(videoUrl: video.videoUrl, caption: video.caption,),
            ),
            //FullScreenPlayer(video: video),

            //botones
            Positioned(
              bottom: 40,
              right: 20              
              ,child: VideoButtons(video: video)),
          ],
        );

      },
    );
  }
}


