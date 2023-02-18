import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/models/user/user.dart';
import '../../../../domain/repositories/auth_repository.dart';
import '../../../../domain/typedefs.dart';
import '../../../global/blocs/session/session_bloc.dart';
import '../../../global/blocs/session/session_events.dart';
import 'sign_in_events.dart';
import 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(
    super.initialState, {
    required AuthRepository authRepository,
    required SessionBloc sessionBloc,
  })  : _authRepository = authRepository,
        _sessionBloc = sessionBloc {
    on<SignInEmailChangedEvent>(
      (event, emit) => emit(
        state.copyWith(
          email: event.email,
        ),
      ),
    );
    on<SignInPasswordChangedEvent>(
      (event, emit) => emit(
        state.copyWith(
          password: event.password,
        ),
      ),
    );
    on<SignInTermsChangedEvent>(
      (event, emit) => emit(
        state.copyWith(
          termsAccepted: event.termsAccepted,
        ),
      ),
    );
    on<SignInFetchingEvent>(
      (event, emit) => emit(
        state.copyWith(fetching: event.value),
      ),
    );
  }

  final AuthRepository _authRepository;
  final SessionBloc _sessionBloc;

  HttpFuture<User> signIn() async {
    add(
      SignInEvent.fetching(true),
    );
    final result = await _authRepository.signIn(
      state.email,
      state.password,
    );

    add(
      SignInEvent.fetching(false),
    );

    result.whenOrNull(
      right: (user) => _sessionBloc.add(
        SessionEvent.setUser(user),
      ),
    );
    return result;
  }
}
