class User {
  final int id;
  final String username;
  final String avatar;

  User({
    required this.id,
    required this.username,
    required this.avatar,
  });

  User copyWith({
    int? id,
    String? username,
    String? avatar,
  }) =>
      User(
        id: id ?? this.id,
        username: username ?? this.username,
        avatar: avatar ?? this.avatar,
      );
}
