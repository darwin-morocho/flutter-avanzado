import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../blocs/video_player/video_player_bloc.dart';
import '../extensions.dart';

class VideoPlayerPosition extends StatelessWidget {
  const VideoPlayerPosition({super.key});

  @override
  Widget build(BuildContext context) {
    final VideoPlayerBloc bloc = context.watch();
    final state = bloc.state;
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(
        '${state.position.formatted} / ${state.duration.formatted}',
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
