import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String username,
    required int? age,
    @JsonKey(readValue: _readAvatar) required String avatar,
    required List<Occupation> occupations,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Occupation with _$Occupation {
  const factory Occupation({
    required int id,
    required String name,
  }) = _Occupation;

  factory Occupation.fromJson(Map<String, dynamic> json) =>
      _$OccupationFromJson(json);
}

String _readAvatar(Map json, String key) {
  return json['avatar']['tmdb']['avatar_path'] as String;
}
