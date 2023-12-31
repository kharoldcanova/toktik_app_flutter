import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_app_flutter/config/theme/app_theme.dart';
import 'package:toktik_app_flutter/infraestructure/datasources/local_video_datasource_impl.dart';
import 'package:toktik_app_flutter/infraestructure/repositories/video_post_repository_impl.dart';
import 'package:toktik_app_flutter/presentations/providers/discover_provider.dart';
import 'package:toktik_app_flutter/presentations/screens/discover/discovery_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository =
        VideoPostsRepositoryImpl(videoPostDatasource: LocalVideoDataSource());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false,
            create: (_) =>
                DiscoverProvider(videoPostRepository: videoPostRepository)
                  ..loadNexPage())
      ],
      child: MaterialApp(
          title: 'TokTik',
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          home: const DiscoverScreen()),
    );
  }
}
