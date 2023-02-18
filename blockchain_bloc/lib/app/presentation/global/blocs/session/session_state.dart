import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/user/user.dart';

part 'session_state.freezed.dart';

@freezed
class SessionState with _$SessionState {
  factory SessionState({
    User? user,
  }) = _SessionState;
}
