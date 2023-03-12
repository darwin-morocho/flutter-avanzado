import 'package:freezed_annotation/freezed_annotation.dart';

part 'story.freezed.dart';

@freezed
class Story with _$Story {
  const factory Story({
    required String bg,
    required String avatar,
    required String username,
  }) = _Story;
}
