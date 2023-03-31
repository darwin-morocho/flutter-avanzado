import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:video_player/video_player.dart';

import '../../../../domain/models/video.dart';
import '../current_video/current_video_bloc.dart';
import 'video_player_state.dart';

class VideoPlayerBloc extends ValueNotifier<VideoPlayerState> {
  VideoPlayerBloc(
    super.value, {
    required this.video,
    required this.controller,
    required CurrentVideoBloc currentVideoBloc,
    Duration hideDuration = const Duration(seconds: 3),
  })  : _hideDuration = hideDuration,
        _currentVideoBloc = currentVideoBloc;

  final Video video;
  final VideoPlayerController controller;

  final CurrentVideoBloc _currentVideoBloc;

  Timer? _timer;

  final Duration _hideDuration;

  VideoPlayerLoadedState get state => value.maybeMap(
        loaded: (state) => state,
        orElse: () => throw AssertionError(
            'value is not an instance of VideoPlayerLoadedState'),
      );

  Future<void> init() async {
    try {
      value.whenOrNull(
        failed: () {
          value = VideoPlayerState.loading();
        },
      );
      await controller.initialize();
      value = VideoPlayerState.loaded(
        duration: controller.value.duration,
      );
      controller.addListener(_listener);
      _currentVideoBloc.addListener(_currentVideoListener);
    } catch (_) {
      value = VideoPlayerState.failed();
    }
  }

  void _listener() {
    final controllerValue = controller.value;
    final position = controllerValue.position;

    final finished = position == state.duration;

    value = state.copyWith(
      position: position,
      status: finished ? const PlayerStatus.finished() : state.status,
    );
  }

  void _currentVideoListener() {
    final playing = state.status.maybeWhen(
      playing: () => true,
      orElse: () => false,
    );
    if (playing && _currentVideoBloc.video != video) {
      pause(
        pictureInPicture: false,
      );
    }
  }

  void _startHideTimer() {
    _timer = Timer(
      _hideDuration,
      () {
        value = state.copyWith(
          controlsVisible: false,
        );
      },
    );
  }

  Future<void> play() async {
    _currentVideoBloc.setCurrentVideo(video);
    _timer?.cancel();
    await controller.play();
    value = state.copyWith(
      status: const PlayerStatus.playing(),
    );
    _startHideTimer();
  }

  Future<void> pause({
    bool? pictureInPicture,
  }) async {
    _timer?.cancel();
    await controller.pause();
    value = state.copyWith(
      pictureInPicture: pictureInPicture ?? state.pictureInPicture,
      status: const PlayerStatus.paused(),
    );
    _startHideTimer();
  }

  Future<void> toggleMute() async {
    final muted = !state.muted;
    await controller.setVolume(muted ? 0 : 1);
    value = state.copyWith(
      muted: muted,
    );
  }

  void onSliderPositionChanged(Duration sliderPosition) {
    _timer?.cancel();
    value = state.copyWith(
      sliderPosition: sliderPosition,
    );
  }

  void onFullscreenChanged(bool fullscreen) {
    value = state.copyWith(
      fullscreen: fullscreen,
    );
  }

  Future<void> onPosition(Duration position) async {
    _timer?.cancel();
    await controller.seekTo(position);
    value = state.copyWith(
      position: position,
      sliderPosition: null,
    );
    _startHideTimer();
  }

  void onPictureInPictureChanged(bool pictureInPicture) {
    value = state.copyWith(
      pictureInPicture: pictureInPicture,
    );
  }

  void toggleControlsVisible() {
    _timer?.cancel();
    final visible = !state.controlsVisible;
    value = state.copyWith(
      controlsVisible: visible,
    );
    if (visible) {
      _startHideTimer();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _currentVideoBloc.removeListener(_currentVideoListener);
    controller.removeListener(_listener);
    controller.dispose();
    super.dispose();
  }
}
