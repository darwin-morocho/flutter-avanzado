import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../blocs/video_player/video_player_bloc.dart';
import '../../../../../icons/custom_icons.dart';
import '../../../video_player_fullscreen_view.dart';

class VideoPlayerFullscreenButton extends StatelessWidget {
  const VideoPlayerFullscreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    final VideoPlayerBloc bloc = context.watch();
    final state = bloc.state;

    return MaterialButton(
      minWidth: 30,
      padding: const EdgeInsets.all(10),
      onPressed: () {
        if (!state.fullscreen) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => VideoPlayerFullscreenView(
                bloc: bloc,
              ),
            ),
          );
        } else {
          Navigator.pop(context);
        }
        bloc.onFullscreenChanged(
          !state.fullscreen,
        );
      },
      child: Icon(
        state.fullscreen ? CustomIcons.fullscreen_exit : CustomIcons.fullscreen,
        color: Colors.white,
      ),
    );
  }
}
