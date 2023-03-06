import 'package:bloc/bloc.dart';

import '../../../../domain/repositories/auth_repository.dart';
import 'session_events.dart';
import 'session_state.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  SessionBloc(super.initialState, this._authRepository) {
    on<SessionSetUserEvent>(
      (event, emit) => emit(
        state.copyWith(
          user: event.user,
        ),
      ),
    );
    on<SessionSignOutEvent>(
      (event, emit) async {
        await _authRepository.signOut();
        emit(
          state.copyWith(user: null),
        );
      },
    );
  }

  final AuthRepository _authRepository;
}
