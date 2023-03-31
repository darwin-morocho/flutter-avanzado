import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../../../../domain/models/video.dart';
import '../../blocs/video_player/video_player_bloc.dart';
import '../../blocs/video_player/video_player_state.dart';
import 'widgets/controls/video_player_controls.dart';
import 'widgets/pip.dart';
import 'widgets/video_player_error.dart';

class VideoPlayerView extends StatefulWidget {
  const VideoPlayerView({
    super.key,
    required this.video,
    this.bloc,
  });
  final Video video;
  final VideoPlayerBloc? bloc;

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();

  static VideoPlayerView of(BuildContext context) {
    final view = context.findAncestorWidgetOfExactType<VideoPlayerView>();
    assert(view != null, 'VideoPlayerView not found');
    return view!;
  }
}

class _VideoPlayerViewState extends State<VideoPlayerView>
    with AutomaticKeepAliveClientMixin {
  late final VideoPlayerBloc _bloc;
  bool _alive = false;
  OverlayEntry? _overlayEntry;

  @override
  void initState() {
    super.initState();

    if (widget.bloc != null) {
      _bloc = widget.bloc!;
    } else {
      _bloc = VideoPlayerBloc(
        VideoPlayerState.loading(),
        video: widget.video,
        currentVideoBloc: context.read(),
        controller: VideoPlayerController.network(
          widget.video.src,
        ),
      )..init();
    }

    if (widget.bloc == null) {
      _bloc.addListener(_listener);
    }
  }

  void _listener() {
    _bloc.value.mapOrNull(
      loaded: (state) {
        final playing = state.status.maybeWhen(
          playing: () => true,
          orElse: () => false,
        );
        if (!mounted) {
          return;
        }
        if (playing && !_alive) {
          setState(() {
            _alive = true;
          });
        }

        if (_overlayEntry != null && !state.pictureInPicture) {
          _overlayEntry?.remove();
          _overlayEntry = null;
        } else if (_overlayEntry == null && state.pictureInPicture) {
          _showPip();
        }
      },
    );
  }

  @override
  void dispose() {
    if (widget.bloc == null) {
      _bloc.removeListener(_listener);
      _bloc.dispose();
    }
    _overlayEntry?.remove();

    super.dispose();
  }

  void _showPip() {
    final overlayState = Overlay.maybeOf(context);
    if (overlayState == null) {
      return;
    }

    _overlayEntry = OverlayEntry(
      builder: (_) => Pip(
        child: AspectRatio(
          aspectRatio: _bloc.controller.value.aspectRatio,
          child: VideoPlayerView(
            video: _bloc.video,
            bloc: _bloc,
          ),
        ),
      ),
    );

    overlayState.insert(
      _overlayEntry!,
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ClipPath(
      child: Container(
        color: Colors.black,
        child: ChangeNotifierProvider<VideoPlayerBloc>.value(
          value: _bloc,
          child: CachedNetworkImage(
            imageUrl: widget.video.thumbnail,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          builder: (context, preview) {
            final VideoPlayerBloc bloc = context.watch();

            return bloc.value.map(
              loading: (_) => Stack(
                children: [
                  preview!,
                  const Center(
                    child: CircularProgressIndicator(),
                  ),
                ],
              ),
              failed: (_) => const VideoPlayerError(),
              loaded: (state) {
                final pipMode = widget.bloc != null && state.pictureInPicture;
                return Stack(
                  children: [
                    if (pipMode || !state.pictureInPicture)
                      Center(
                        child: AspectRatio(
                          aspectRatio: bloc.controller.value.aspectRatio,
                          child: Hero(
                            tag: widget.video,
                            child: VideoPlayer(
                              bloc.controller,
                            ),
                          ),
                        ),
                      )
                    else
                      const Center(
                        child: Text(
                          'Playing video...',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    Center(
                      child: state.status.maybeWhen(
                        ready: () => preview!,
                        orElse: () => const SizedBox(),
                      ),
                    ),
                    const VideoPlayerControls(),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => _alive;
}
