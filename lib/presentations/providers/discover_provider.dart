import 'package:flutter/material.dart';
import 'package:toktik_app_flutter/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [

  ];

  Future<void> loadNexPage()async{
    //todo: cargar videos
    notifyListeners();
  }
}