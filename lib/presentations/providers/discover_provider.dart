import 'package:flutter/material.dart';
import 'package:toktik_app_flutter/domain/entities/video_post.dart';
import 'package:toktik_app_flutter/domain/repositories/video_post_repository.dart';

class DiscoverProvider extends ChangeNotifier {

  final VideoPostRepository videoPostRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoPostRepository});

  Future<void> loadNexPage() async {
    // await Future.delayed(const Duration(seconds: 2));
    // final List<VideoPost> newVideo = videoPosts
    //     .map((video) => LocalVideoModel.fromJsonMap(video).toVideoEntity())
    //     .toList();
    final newVideos = await videoPostRepository.getTrendingVideosByPage(1);
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
