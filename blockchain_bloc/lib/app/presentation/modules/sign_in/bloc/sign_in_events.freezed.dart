// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(bool termsAccepted) termsChanged,
    required TResult Function(bool value) fetching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(bool termsAccepted)? termsChanged,
    TResult? Function(bool value)? fetching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(bool termsAccepted)? termsChanged,
    TResult Function(bool value)? fetching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEmailChangedEvent value) emailChanged,
    required TResult Function(SignInPasswordChangedEvent value) passwordChanged,
    required TResult Function(SignInTermsChangedEvent value) termsChanged,
    required TResult Function(SignInFetchingEvent value) fetching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEmailChangedEvent value)? emailChanged,
    TResult? Function(SignInPasswordChangedEvent value)? passwordChanged,
    TResult? Function(SignInTermsChangedEvent value)? termsChanged,
    TResult? Function(SignInFetchingEvent value)? fetching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEmailChangedEvent value)? emailChanged,
    TResult Function(SignInPasswordChangedEvent value)? passwordChanged,
    TResult Function(SignInTermsChangedEvent value)? termsChanged,
    TResult Function(SignInFetchingEvent value)? fetching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInEmailChangedEventCopyWith<$Res> {
  factory _$$SignInEmailChangedEventCopyWith(_$SignInEmailChangedEvent value,
          $Res Function(_$SignInEmailChangedEvent) then) =
      __$$SignInEmailChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SignInEmailChangedEventCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInEmailChangedEvent>
    implements _$$SignInEmailChangedEventCopyWith<$Res> {
  __$$SignInEmailChangedEventCopyWithImpl(_$SignInEmailChangedEvent _value,
      $Res Function(_$SignInEmailChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SignInEmailChangedEvent(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInEmailChangedEvent implements SignInEmailChangedEvent {
  _$SignInEmailChangedEvent(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEmailChangedEvent &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEmailChangedEventCopyWith<_$SignInEmailChangedEvent> get copyWith =>
      __$$SignInEmailChangedEventCopyWithImpl<_$SignInEmailChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(bool termsAccepted) termsChanged,
    required TResult Function(bool value) fetching,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(bool termsAccepted)? termsChanged,
    TResult? Function(bool value)? fetching,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(bool termsAccepted)? termsChanged,
    TResult Function(bool value)? fetching,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEmailChangedEvent value) emailChanged,
    required TResult Function(SignInPasswordChangedEvent value) passwordChanged,
    required TResult Function(SignInTermsChangedEvent value) termsChanged,
    required TResult Function(SignInFetchingEvent value) fetching,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEmailChangedEvent value)? emailChanged,
    TResult? Function(SignInPasswordChangedEvent value)? passwordChanged,
    TResult? Function(SignInTermsChangedEvent value)? termsChanged,
    TResult? Function(SignInFetchingEvent value)? fetching,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEmailChangedEvent value)? emailChanged,
    TResult Function(SignInPasswordChangedEvent value)? passwordChanged,
    TResult Function(SignInTermsChangedEvent value)? termsChanged,
    TResult Function(SignInFetchingEvent value)? fetching,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class SignInEmailChangedEvent implements SignInEvent {
  factory SignInEmailChangedEvent(final String email) =
      _$SignInEmailChangedEvent;

  String get email;
  @JsonKey(ignore: true)
  _$$SignInEmailChangedEventCopyWith<_$SignInEmailChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInPasswordChangedEventCopyWith<$Res> {
  factory _$$SignInPasswordChangedEventCopyWith(
          _$SignInPasswordChangedEvent value,
          $Res Function(_$SignInPasswordChangedEvent) then) =
      __$$SignInPasswordChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$SignInPasswordChangedEventCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInPasswordChangedEvent>
    implements _$$SignInPasswordChangedEventCopyWith<$Res> {
  __$$SignInPasswordChangedEventCopyWithImpl(
      _$SignInPasswordChangedEvent _value,
      $Res Function(_$SignInPasswordChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$SignInPasswordChangedEvent(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInPasswordChangedEvent implements SignInPasswordChangedEvent {
  _$SignInPasswordChangedEvent(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInPasswordChangedEvent &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInPasswordChangedEventCopyWith<_$SignInPasswordChangedEvent>
      get copyWith => __$$SignInPasswordChangedEventCopyWithImpl<
          _$SignInPasswordChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(bool termsAccepted) termsChanged,
    required TResult Function(bool value) fetching,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(bool termsAccepted)? termsChanged,
    TResult? Function(bool value)? fetching,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(bool termsAccepted)? termsChanged,
    TResult Function(bool value)? fetching,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEmailChangedEvent value) emailChanged,
    required TResult Function(SignInPasswordChangedEvent value) passwordChanged,
    required TResult Function(SignInTermsChangedEvent value) termsChanged,
    required TResult Function(SignInFetchingEvent value) fetching,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEmailChangedEvent value)? emailChanged,
    TResult? Function(SignInPasswordChangedEvent value)? passwordChanged,
    TResult? Function(SignInTermsChangedEvent value)? termsChanged,
    TResult? Function(SignInFetchingEvent value)? fetching,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEmailChangedEvent value)? emailChanged,
    TResult Function(SignInPasswordChangedEvent value)? passwordChanged,
    TResult Function(SignInTermsChangedEvent value)? termsChanged,
    TResult Function(SignInFetchingEvent value)? fetching,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class SignInPasswordChangedEvent implements SignInEvent {
  factory SignInPasswordChangedEvent(final String password) =
      _$SignInPasswordChangedEvent;

  String get password;
  @JsonKey(ignore: true)
  _$$SignInPasswordChangedEventCopyWith<_$SignInPasswordChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInTermsChangedEventCopyWith<$Res> {
  factory _$$SignInTermsChangedEventCopyWith(_$SignInTermsChangedEvent value,
          $Res Function(_$SignInTermsChangedEvent) then) =
      __$$SignInTermsChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool termsAccepted});
}

/// @nodoc
class __$$SignInTermsChangedEventCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInTermsChangedEvent>
    implements _$$SignInTermsChangedEventCopyWith<$Res> {
  __$$SignInTermsChangedEventCopyWithImpl(_$SignInTermsChangedEvent _value,
      $Res Function(_$SignInTermsChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termsAccepted = null,
  }) {
    return _then(_$SignInTermsChangedEvent(
      null == termsAccepted
          ? _value.termsAccepted
          : termsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignInTermsChangedEvent implements SignInTermsChangedEvent {
  _$SignInTermsChangedEvent(this.termsAccepted);

  @override
  final bool termsAccepted;

  @override
  String toString() {
    return 'SignInEvent.termsChanged(termsAccepted: $termsAccepted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInTermsChangedEvent &&
            (identical(other.termsAccepted, termsAccepted) ||
                other.termsAccepted == termsAccepted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, termsAccepted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInTermsChangedEventCopyWith<_$SignInTermsChangedEvent> get copyWith =>
      __$$SignInTermsChangedEventCopyWithImpl<_$SignInTermsChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(bool termsAccepted) termsChanged,
    required TResult Function(bool value) fetching,
  }) {
    return termsChanged(termsAccepted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(bool termsAccepted)? termsChanged,
    TResult? Function(bool value)? fetching,
  }) {
    return termsChanged?.call(termsAccepted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(bool termsAccepted)? termsChanged,
    TResult Function(bool value)? fetching,
    required TResult orElse(),
  }) {
    if (termsChanged != null) {
      return termsChanged(termsAccepted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEmailChangedEvent value) emailChanged,
    required TResult Function(SignInPasswordChangedEvent value) passwordChanged,
    required TResult Function(SignInTermsChangedEvent value) termsChanged,
    required TResult Function(SignInFetchingEvent value) fetching,
  }) {
    return termsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEmailChangedEvent value)? emailChanged,
    TResult? Function(SignInPasswordChangedEvent value)? passwordChanged,
    TResult? Function(SignInTermsChangedEvent value)? termsChanged,
    TResult? Function(SignInFetchingEvent value)? fetching,
  }) {
    return termsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEmailChangedEvent value)? emailChanged,
    TResult Function(SignInPasswordChangedEvent value)? passwordChanged,
    TResult Function(SignInTermsChangedEvent value)? termsChanged,
    TResult Function(SignInFetchingEvent value)? fetching,
    required TResult orElse(),
  }) {
    if (termsChanged != null) {
      return termsChanged(this);
    }
    return orElse();
  }
}

abstract class SignInTermsChangedEvent implements SignInEvent {
  factory SignInTermsChangedEvent(final bool termsAccepted) =
      _$SignInTermsChangedEvent;

  bool get termsAccepted;
  @JsonKey(ignore: true)
  _$$SignInTermsChangedEventCopyWith<_$SignInTermsChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInFetchingEventCopyWith<$Res> {
  factory _$$SignInFetchingEventCopyWith(_$SignInFetchingEvent value,
          $Res Function(_$SignInFetchingEvent) then) =
      __$$SignInFetchingEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$SignInFetchingEventCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInFetchingEvent>
    implements _$$SignInFetchingEventCopyWith<$Res> {
  __$$SignInFetchingEventCopyWithImpl(
      _$SignInFetchingEvent _value, $Res Function(_$SignInFetchingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SignInFetchingEvent(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignInFetchingEvent implements SignInFetchingEvent {
  _$SignInFetchingEvent(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'SignInEvent.fetching(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFetchingEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFetchingEventCopyWith<_$SignInFetchingEvent> get copyWith =>
      __$$SignInFetchingEventCopyWithImpl<_$SignInFetchingEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(bool termsAccepted) termsChanged,
    required TResult Function(bool value) fetching,
  }) {
    return fetching(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(bool termsAccepted)? termsChanged,
    TResult? Function(bool value)? fetching,
  }) {
    return fetching?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(bool termsAccepted)? termsChanged,
    TResult Function(bool value)? fetching,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEmailChangedEvent value) emailChanged,
    required TResult Function(SignInPasswordChangedEvent value) passwordChanged,
    required TResult Function(SignInTermsChangedEvent value) termsChanged,
    required TResult Function(SignInFetchingEvent value) fetching,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEmailChangedEvent value)? emailChanged,
    TResult? Function(SignInPasswordChangedEvent value)? passwordChanged,
    TResult? Function(SignInTermsChangedEvent value)? termsChanged,
    TResult? Function(SignInFetchingEvent value)? fetching,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEmailChangedEvent value)? emailChanged,
    TResult Function(SignInPasswordChangedEvent value)? passwordChanged,
    TResult Function(SignInTermsChangedEvent value)? termsChanged,
    TResult Function(SignInFetchingEvent value)? fetching,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class SignInFetchingEvent implements SignInEvent {
  factory SignInFetchingEvent(final bool value) = _$SignInFetchingEvent;

  bool get value;
  @JsonKey(ignore: true)
  _$$SignInFetchingEventCopyWith<_$SignInFetchingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
