// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(WsStatus status) updateWsStatus,
    required TResult Function(Map<String, double> prices) updateCryptoPrices,
    required TResult Function(Crypto crypto) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(WsStatus status)? updateWsStatus,
    TResult? Function(Map<String, double> prices)? updateCryptoPrices,
    TResult? Function(Crypto crypto)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(WsStatus status)? updateWsStatus,
    TResult Function(Map<String, double> prices)? updateCryptoPrices,
    TResult Function(Crypto crypto)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(UpdateWsStatusEvent value) updateWsStatus,
    required TResult Function(UpdateCryptoPricesEvent value) updateCryptoPrices,
    required TResult Function(DeleteEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeEvent value)? initialize,
    TResult? Function(UpdateWsStatusEvent value)? updateWsStatus,
    TResult? Function(UpdateCryptoPricesEvent value)? updateCryptoPrices,
    TResult? Function(DeleteEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(UpdateWsStatusEvent value)? updateWsStatus,
    TResult Function(UpdateCryptoPricesEvent value)? updateCryptoPrices,
    TResult Function(DeleteEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeEventCopyWith<$Res> {
  factory _$$InitializeEventCopyWith(
          _$InitializeEvent value, $Res Function(_$InitializeEvent) then) =
      __$$InitializeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitializeEvent>
    implements _$$InitializeEventCopyWith<$Res> {
  __$$InitializeEventCopyWithImpl(
      _$InitializeEvent _value, $Res Function(_$InitializeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeEvent implements InitializeEvent {
  _$InitializeEvent();

  @override
  String toString() {
    return 'HomeEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(WsStatus status) updateWsStatus,
    required TResult Function(Map<String, double> prices) updateCryptoPrices,
    required TResult Function(Crypto crypto) delete,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(WsStatus status)? updateWsStatus,
    TResult? Function(Map<String, double> prices)? updateCryptoPrices,
    TResult? Function(Crypto crypto)? delete,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(WsStatus status)? updateWsStatus,
    TResult Function(Map<String, double> prices)? updateCryptoPrices,
    TResult Function(Crypto crypto)? delete,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(UpdateWsStatusEvent value) updateWsStatus,
    required TResult Function(UpdateCryptoPricesEvent value) updateCryptoPrices,
    required TResult Function(DeleteEvent value) delete,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeEvent value)? initialize,
    TResult? Function(UpdateWsStatusEvent value)? updateWsStatus,
    TResult? Function(UpdateCryptoPricesEvent value)? updateCryptoPrices,
    TResult? Function(DeleteEvent value)? delete,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(UpdateWsStatusEvent value)? updateWsStatus,
    TResult Function(UpdateCryptoPricesEvent value)? updateCryptoPrices,
    TResult Function(DeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class InitializeEvent implements HomeEvent {
  factory InitializeEvent() = _$InitializeEvent;
}

/// @nodoc
abstract class _$$UpdateWsStatusEventCopyWith<$Res> {
  factory _$$UpdateWsStatusEventCopyWith(_$UpdateWsStatusEvent value,
          $Res Function(_$UpdateWsStatusEvent) then) =
      __$$UpdateWsStatusEventCopyWithImpl<$Res>;
  @useResult
  $Res call({WsStatus status});

  $WsStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$UpdateWsStatusEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateWsStatusEvent>
    implements _$$UpdateWsStatusEventCopyWith<$Res> {
  __$$UpdateWsStatusEventCopyWithImpl(
      _$UpdateWsStatusEvent _value, $Res Function(_$UpdateWsStatusEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UpdateWsStatusEvent(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WsStatus,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WsStatusCopyWith<$Res> get status {
    return $WsStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc

class _$UpdateWsStatusEvent implements UpdateWsStatusEvent {
  _$UpdateWsStatusEvent(this.status);

  @override
  final WsStatus status;

  @override
  String toString() {
    return 'HomeEvent.updateWsStatus(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWsStatusEvent &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWsStatusEventCopyWith<_$UpdateWsStatusEvent> get copyWith =>
      __$$UpdateWsStatusEventCopyWithImpl<_$UpdateWsStatusEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(WsStatus status) updateWsStatus,
    required TResult Function(Map<String, double> prices) updateCryptoPrices,
    required TResult Function(Crypto crypto) delete,
  }) {
    return updateWsStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(WsStatus status)? updateWsStatus,
    TResult? Function(Map<String, double> prices)? updateCryptoPrices,
    TResult? Function(Crypto crypto)? delete,
  }) {
    return updateWsStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(WsStatus status)? updateWsStatus,
    TResult Function(Map<String, double> prices)? updateCryptoPrices,
    TResult Function(Crypto crypto)? delete,
    required TResult orElse(),
  }) {
    if (updateWsStatus != null) {
      return updateWsStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(UpdateWsStatusEvent value) updateWsStatus,
    required TResult Function(UpdateCryptoPricesEvent value) updateCryptoPrices,
    required TResult Function(DeleteEvent value) delete,
  }) {
    return updateWsStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeEvent value)? initialize,
    TResult? Function(UpdateWsStatusEvent value)? updateWsStatus,
    TResult? Function(UpdateCryptoPricesEvent value)? updateCryptoPrices,
    TResult? Function(DeleteEvent value)? delete,
  }) {
    return updateWsStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(UpdateWsStatusEvent value)? updateWsStatus,
    TResult Function(UpdateCryptoPricesEvent value)? updateCryptoPrices,
    TResult Function(DeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (updateWsStatus != null) {
      return updateWsStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateWsStatusEvent implements HomeEvent {
  factory UpdateWsStatusEvent(final WsStatus status) = _$UpdateWsStatusEvent;

  WsStatus get status;
  @JsonKey(ignore: true)
  _$$UpdateWsStatusEventCopyWith<_$UpdateWsStatusEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCryptoPricesEventCopyWith<$Res> {
  factory _$$UpdateCryptoPricesEventCopyWith(_$UpdateCryptoPricesEvent value,
          $Res Function(_$UpdateCryptoPricesEvent) then) =
      __$$UpdateCryptoPricesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, double> prices});
}

/// @nodoc
class __$$UpdateCryptoPricesEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateCryptoPricesEvent>
    implements _$$UpdateCryptoPricesEventCopyWith<$Res> {
  __$$UpdateCryptoPricesEventCopyWithImpl(_$UpdateCryptoPricesEvent _value,
      $Res Function(_$UpdateCryptoPricesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prices = null,
  }) {
    return _then(_$UpdateCryptoPricesEvent(
      null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc

class _$UpdateCryptoPricesEvent implements UpdateCryptoPricesEvent {
  _$UpdateCryptoPricesEvent(final Map<String, double> prices)
      : _prices = prices;

  final Map<String, double> _prices;
  @override
  Map<String, double> get prices {
    if (_prices is EqualUnmodifiableMapView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_prices);
  }

  @override
  String toString() {
    return 'HomeEvent.updateCryptoPrices(prices: $prices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCryptoPricesEvent &&
            const DeepCollectionEquality().equals(other._prices, _prices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_prices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCryptoPricesEventCopyWith<_$UpdateCryptoPricesEvent> get copyWith =>
      __$$UpdateCryptoPricesEventCopyWithImpl<_$UpdateCryptoPricesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(WsStatus status) updateWsStatus,
    required TResult Function(Map<String, double> prices) updateCryptoPrices,
    required TResult Function(Crypto crypto) delete,
  }) {
    return updateCryptoPrices(prices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(WsStatus status)? updateWsStatus,
    TResult? Function(Map<String, double> prices)? updateCryptoPrices,
    TResult? Function(Crypto crypto)? delete,
  }) {
    return updateCryptoPrices?.call(prices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(WsStatus status)? updateWsStatus,
    TResult Function(Map<String, double> prices)? updateCryptoPrices,
    TResult Function(Crypto crypto)? delete,
    required TResult orElse(),
  }) {
    if (updateCryptoPrices != null) {
      return updateCryptoPrices(prices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(UpdateWsStatusEvent value) updateWsStatus,
    required TResult Function(UpdateCryptoPricesEvent value) updateCryptoPrices,
    required TResult Function(DeleteEvent value) delete,
  }) {
    return updateCryptoPrices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeEvent value)? initialize,
    TResult? Function(UpdateWsStatusEvent value)? updateWsStatus,
    TResult? Function(UpdateCryptoPricesEvent value)? updateCryptoPrices,
    TResult? Function(DeleteEvent value)? delete,
  }) {
    return updateCryptoPrices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(UpdateWsStatusEvent value)? updateWsStatus,
    TResult Function(UpdateCryptoPricesEvent value)? updateCryptoPrices,
    TResult Function(DeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (updateCryptoPrices != null) {
      return updateCryptoPrices(this);
    }
    return orElse();
  }
}

abstract class UpdateCryptoPricesEvent implements HomeEvent {
  factory UpdateCryptoPricesEvent(final Map<String, double> prices) =
      _$UpdateCryptoPricesEvent;

  Map<String, double> get prices;
  @JsonKey(ignore: true)
  _$$UpdateCryptoPricesEventCopyWith<_$UpdateCryptoPricesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEventCopyWith<$Res> {
  factory _$$DeleteEventCopyWith(
          _$DeleteEvent value, $Res Function(_$DeleteEvent) then) =
      __$$DeleteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Crypto crypto});

  $CryptoCopyWith<$Res> get crypto;
}

/// @nodoc
class __$$DeleteEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeleteEvent>
    implements _$$DeleteEventCopyWith<$Res> {
  __$$DeleteEventCopyWithImpl(
      _$DeleteEvent _value, $Res Function(_$DeleteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crypto = null,
  }) {
    return _then(_$DeleteEvent(
      null == crypto
          ? _value.crypto
          : crypto // ignore: cast_nullable_to_non_nullable
              as Crypto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CryptoCopyWith<$Res> get crypto {
    return $CryptoCopyWith<$Res>(_value.crypto, (value) {
      return _then(_value.copyWith(crypto: value));
    });
  }
}

/// @nodoc

class _$DeleteEvent implements DeleteEvent {
  _$DeleteEvent(this.crypto);

  @override
  final Crypto crypto;

  @override
  String toString() {
    return 'HomeEvent.delete(crypto: $crypto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEvent &&
            (identical(other.crypto, crypto) || other.crypto == crypto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, crypto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEventCopyWith<_$DeleteEvent> get copyWith =>
      __$$DeleteEventCopyWithImpl<_$DeleteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(WsStatus status) updateWsStatus,
    required TResult Function(Map<String, double> prices) updateCryptoPrices,
    required TResult Function(Crypto crypto) delete,
  }) {
    return delete(crypto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(WsStatus status)? updateWsStatus,
    TResult? Function(Map<String, double> prices)? updateCryptoPrices,
    TResult? Function(Crypto crypto)? delete,
  }) {
    return delete?.call(crypto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(WsStatus status)? updateWsStatus,
    TResult Function(Map<String, double> prices)? updateCryptoPrices,
    TResult Function(Crypto crypto)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(crypto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(UpdateWsStatusEvent value) updateWsStatus,
    required TResult Function(UpdateCryptoPricesEvent value) updateCryptoPrices,
    required TResult Function(DeleteEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeEvent value)? initialize,
    TResult? Function(UpdateWsStatusEvent value)? updateWsStatus,
    TResult? Function(UpdateCryptoPricesEvent value)? updateCryptoPrices,
    TResult? Function(DeleteEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(UpdateWsStatusEvent value)? updateWsStatus,
    TResult Function(UpdateCryptoPricesEvent value)? updateCryptoPrices,
    TResult Function(DeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteEvent implements HomeEvent {
  factory DeleteEvent(final Crypto crypto) = _$DeleteEvent;

  Crypto get crypto;
  @JsonKey(ignore: true)
  _$$DeleteEventCopyWith<_$DeleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
