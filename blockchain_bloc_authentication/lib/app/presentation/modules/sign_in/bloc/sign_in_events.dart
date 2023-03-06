import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_events.freezed.dart';

@freezed
class SignInEvent with _$SignInEvent {
  factory SignInEvent.emailChanged(String email) = SignInEmailChangedEvent;

  factory SignInEvent.passwordChanged(String password) =
      SignInPasswordChangedEvent;

  factory SignInEvent.termsChanged(bool termsAccepted) =
      SignInTermsChangedEvent;

  factory SignInEvent.fetching(bool value) = SignInFetchingEvent;
}
