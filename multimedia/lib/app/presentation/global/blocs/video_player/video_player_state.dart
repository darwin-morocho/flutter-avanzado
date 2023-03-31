import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_player_state.freezed.dart';

@freezed
class VideoPlayerState with _$VideoPlayerState {
  factory VideoPlayerState.loading() = _Loading;
  factory VideoPlayerState.failed() = _Failed;
  factory VideoPlayerState.loaded({
    required Duration duration,
    Duration? sliderPosition,
    @Default(Duration.zero) Duration position,
    @Default(false) bool fullscreen,
    @Default(false) bool pictureInPicture,
    @Default(false) bool muted,
    @Default(true) bool controlsVisible,
    @Default(PlayerStatus.ready()) PlayerStatus status,
  }) = VideoPlayerLoadedState;
}

@freezed
class PlayerStatus with _$PlayerStatus {
  const factory PlayerStatus.ready() = _Ready;
  const factory PlayerStatus.playing() = _Playing;
  const factory PlayerStatus.paused() = _Paused;
  const factory PlayerStatus.finished() = _Finished;
}
