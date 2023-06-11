import 'package:flutter/material.dart';
import 'package:toktik_app_flutter/domain/entities/video_post.dart';
import 'package:toktik_app_flutter/infraestructure/models/local_video_model.dart';
import 'package:toktik_app_flutter/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: Repository. DataSource

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNexPage() async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideo = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoEntity())
        .toList();
    videos.addAll(newVideo);
    initialLoading = false;
    notifyListeners();
  }
}
