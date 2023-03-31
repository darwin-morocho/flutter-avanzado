import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../blocs/video_player/video_player_bloc.dart';
import '../../../video_player_view.dart';

class VideoPlayerPlayButton extends StatelessWidget {
  const VideoPlayerPlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    final playerView = VideoPlayerView.of(context);
    final VideoPlayerBloc bloc = context.watch();
    final state = bloc.state;

    final pipMode = playerView.bloc != null && state.pictureInPicture;

    if (pipMode || !state.pictureInPicture) {
      return ClipOval(
        child: Material(
          color: Colors.black26,
          child: IconButton(
            onPressed: () {
              state.status.maybeWhen(
                playing: bloc.pause,
                orElse: bloc.play,
              );
            },
            icon: Icon(
              state.status.when(
                playing: () => Icons.pause,
                paused: () => Icons.play_arrow,
                ready: () => Icons.play_arrow,
                finished: () => Icons.replay,
              ),
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    return const SizedBox();
  }
}
