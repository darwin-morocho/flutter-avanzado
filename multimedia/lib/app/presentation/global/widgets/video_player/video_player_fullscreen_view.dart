import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../blocs/video_player/video_player_bloc.dart';
import 'video_player_view.dart';

class VideoPlayerFullscreenView extends StatefulWidget {
  const VideoPlayerFullscreenView({
    super.key,
    required this.bloc,
  });

  final VideoPlayerBloc bloc;

  @override
  State<VideoPlayerFullscreenView> createState() =>
      _VideoPlayerFullscreenViewState();
}

class _VideoPlayerFullscreenViewState extends State<VideoPlayerFullscreenView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: VideoPlayerView(
        video: widget.bloc.video,
        bloc: widget.bloc,
      ),
    );
  }
}
