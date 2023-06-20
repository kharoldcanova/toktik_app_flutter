import 'package:toktik_app_flutter/domain/datasources/video_post_datasource.dart';
import 'package:toktik_app_flutter/domain/entities/video_post.dart';
import 'package:toktik_app_flutter/infraestructure/models/local_video_model.dart';
import 'package:toktik_app_flutter/shared/data/local_video_post.dart';

class LocalVideoDataSource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 5));
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoEntity())
        .toList();
    return newVideos;
  }
}
