import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../blocs/video_player/video_player_bloc.dart';

class VideoPlayerMuteButton extends StatelessWidget {
  const VideoPlayerMuteButton({super.key});

  @override
  Widget build(BuildContext context) {
    final VideoPlayerBloc bloc = context.watch();
    final state = bloc.state;

    return MaterialButton(
      onPressed: bloc.toggleMute,
      padding: const EdgeInsets.all(10),
      minWidth: 30,
      child: Icon(
        state.muted ? Icons.volume_off : Icons.volume_up,
        color: Colors.white,
      ),
    );
  }
}
