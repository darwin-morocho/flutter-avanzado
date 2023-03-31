import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../blocs/video_player/video_player_bloc.dart';

class VideoPlayerError extends StatelessWidget {
  const VideoPlayerError({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Error',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        ElevatedButton(
          onPressed: context.read<VideoPlayerBloc>().init,
          child: const Text('Retry'),
        ),
      ],
    );
  }
}
