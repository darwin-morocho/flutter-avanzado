import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../blocs/video_player/video_player_bloc.dart';
import '../../../../../icons/custom_icons.dart';

class VideoPlayerPipButton extends StatelessWidget {
  const VideoPlayerPipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        context.read<VideoPlayerBloc>().onPictureInPictureChanged(true);
      },
      minWidth: 30,
      color: Colors.black26,
      child: const Icon(
        CustomIcons.picture_in_picture,
        color: Colors.white,
      ),
    );
  }
}
