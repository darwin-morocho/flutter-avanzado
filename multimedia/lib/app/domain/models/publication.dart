import 'package:freezed_annotation/freezed_annotation.dart';

import 'video.dart';

part 'publication.freezed.dart';

@freezed
class Publication with _$Publication {
  const factory Publication({
    required User user,
    required String title,
    required DateTime createdAt,
    required Video video,
    required int commentsCount,
    required int sharesCount,
    required Reaction currentUserReaction,
  }) = _Publication;
}

@freezed
class User with _$User {
  const factory User({
    required String avatar,
    required String username,
  }) = _User;
}

enum Reaction {
  like,
  love,
  laughing,
  sad,
  shocking,
  angry,
}
