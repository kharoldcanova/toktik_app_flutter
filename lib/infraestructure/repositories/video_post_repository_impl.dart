import 'package:toktik_app_flutter/domain/datasources/video_post_datasource.dart';
import 'package:toktik_app_flutter/domain/entities/video_post.dart';
import 'package:toktik_app_flutter/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videoPostDatasource;

  VideoPostsRepositoryImpl({required this.videoPostDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
   return videoPostDatasource.getTrendingVideosByPage(page);
  }
}
