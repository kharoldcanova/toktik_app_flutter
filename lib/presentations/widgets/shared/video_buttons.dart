import 'package:flutter/material.dart';
import 'package:toktik_app_flutter/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({required this.video, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
            value: video.likes,
            iconData: Icons.favorite,
            iconColor: Colors.red),
        CustomIconButton(
          value: video.likes,
          iconData: Icons.remove_red_eye,
        )
      ],
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const CustomIconButton(
      {super.key, required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            iconData,
            color: color,
            size: 30,
          )),
      Text('$value')
    ]);
  }
}
