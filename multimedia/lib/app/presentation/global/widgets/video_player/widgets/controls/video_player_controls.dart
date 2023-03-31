import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../blocs/video_player/video_player_bloc.dart';
import '../../../../icons/custom_icons.dart';
import '../../video_player_view.dart';
import 'widgets/controls_visibility.dart';
import 'widgets/video_player_fullscreen_button.dart';
import 'widgets/video_player_mute_button.dart';
import 'widgets/video_player_pip_button.dart';
import 'widgets/video_player_play_button.dart';
import 'widgets/video_player_position.dart';
import 'widgets/video_player_slider.dart';

class VideoPlayerControls extends StatelessWidget {
  const VideoPlayerControls({super.key});

  @override
  Widget build(BuildContext context) {
    final VideoPlayerBloc bloc = context.watch();
    final state = bloc.state;

    final playerView = VideoPlayerView.of(context);
    final pipMode = playerView.bloc != null && state.pictureInPicture;

    final pipVisible = state.status.maybeWhen(
          playing: () => true,
          paused: () => true,
          orElse: () => false,
        ) &&
        !state.pictureInPicture &&
        !state.fullscreen;

    return Positioned.fill(
      child: GestureDetector(
        onTap: bloc.toggleControlsVisible,
        child: Container(
          color: Colors.transparent,
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (pipMode)
                Positioned(
                  top: 0,
                  left: 0,
                  child: MaterialButton(
                    minWidth: 30,
                    padding: const EdgeInsets.all(8),
                    color: Colors.black26,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: () => bloc.onPictureInPictureChanged(
                      false,
                    ),
                    child: const Icon(
                      CustomIcons.pip_exit,
                      color: Colors.white,
                    ),
                  ),
                ),
              Positioned(
                top: 10,
                right: 10,
                child: ControlsVisibility(
                  visible: pipVisible && state.controlsVisible,
                  begin: const Offset(0, -1),
                  child: const VideoPlayerPipButton(),
                ),
              ),
              ControlsVisibility(
                visible: state.controlsVisible,
                begin: Offset.zero,
                child: const VideoPlayerPlayButton(),
              ),
              if (!state.pictureInPicture)
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: ControlsVisibility(
                    begin: const Offset(0, 1),
                    visible: state.controlsVisible,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black,
                          ],
                        ),
                      ),
                      child: SafeArea(
                        top: false,
                        bottom: state.fullscreen,
                        child: Row(
                          children: const [
                            VideoPlayerPosition(),
                            SizedBox(width: 10),
                            Expanded(
                              child: VideoPlayerSlider(),
                            ),
                            VideoPlayerMuteButton(),
                            VideoPlayerFullscreenButton(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
