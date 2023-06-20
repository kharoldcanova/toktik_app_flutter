import 'package:toktik_app_flutter/domain/entities/video_post.dart';

abstract class VideoPostDatasource {
  Future<List<VideoPost>> getFavoriteVideosByUser (String userId);
  Future<List<VideoPost>> getTrendingVideosByPage (int page);
}