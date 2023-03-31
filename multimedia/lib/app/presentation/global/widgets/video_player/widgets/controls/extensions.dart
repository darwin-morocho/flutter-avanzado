extension DurationExtension on Duration {
  String get formatted {
    String twoDigits(int value) {
      return value.toString().padLeft(2, '0');
    }

    final seconds = inSeconds.remainder(60);

    return '${twoDigits(inMinutes)}:${twoDigits(seconds)}';
  }
}
