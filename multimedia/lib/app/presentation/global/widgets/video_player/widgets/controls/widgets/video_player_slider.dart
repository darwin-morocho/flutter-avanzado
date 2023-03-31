import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../blocs/video_player/video_player_bloc.dart';
import '../extensions.dart';

class VideoPlayerSlider extends StatelessWidget {
  const VideoPlayerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final VideoPlayerBloc bloc = context.watch();
    final state = bloc.state;
    final sliderPosition = state.sliderPosition ?? state.position;

    return SliderTheme(
      data: SliderThemeData(
        trackShape: _SliderTrackShape(),
        thumbShape: const RoundSliderThumbShape(
          enabledThumbRadius: 6,
        ),
      ),
      child: Slider(
        thumbColor: Colors.white,
        activeColor: Colors.white,
        inactiveColor: Colors.white24,
        divisions: state.duration.inSeconds,
        max: state.duration.inSeconds.toDouble(),
        value: sliderPosition.inSeconds.toDouble(),
        label: sliderPosition.formatted,
        onChanged: (value) {
          bloc.onSliderPositionChanged(
            Duration(
              seconds: value.toInt(),
            ),
          );
        },
        onChangeEnd: (value) {
          bloc.onPosition(
            Duration(
              seconds: value.toInt(),
            ),
          );
        },
      ),
    );
  }
}

class _SliderTrackShape extends SliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool? isEnabled,
    bool? isDiscrete,
  }) {
    return Rect.fromLTWH(
      0,
      0,
      parentBox.size.width,
      parentBox.size.height,
    );
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool? isEnabled,
    bool? isDiscrete,
    required TextDirection textDirection,
  }) {
    final paint = Paint();
    paint.color = Colors.white30;
    final canvas = context.canvas;
    final top = parentBox.size.height * 0.5 - 2;
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(
          0,
          top,
          parentBox.size.width,
          4,
        ),
        const Radius.circular(4),
      ),
      paint,
    );

    paint.color = Colors.white;
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(
          0,
          top,
          thumbCenter.dx,
          4,
        ),
        const Radius.circular(4),
      ),
      paint,
    );
  }
}
