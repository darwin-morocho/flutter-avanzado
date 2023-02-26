// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Crypto {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get changePercent24Hr => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CryptoCopyWith<Crypto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoCopyWith<$Res> {
  factory $CryptoCopyWith(Crypto value, $Res Function(Crypto) then) =
      _$CryptoCopyWithImpl<$Res, Crypto>;
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      double price,
      double changePercent24Hr});
}

/// @nodoc
class _$CryptoCopyWithImpl<$Res, $Val extends Crypto>
    implements $CryptoCopyWith<$Res> {
  _$CryptoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? price = null,
    Object? changePercent24Hr = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      changePercent24Hr: null == changePercent24Hr
          ? _value.changePercent24Hr
          : changePercent24Hr // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CryptoCopyWith<$Res> implements $CryptoCopyWith<$Res> {
  factory _$$_CryptoCopyWith(_$_Crypto value, $Res Function(_$_Crypto) then) =
      __$$_CryptoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      double price,
      double changePercent24Hr});
}

/// @nodoc
class __$$_CryptoCopyWithImpl<$Res>
    extends _$CryptoCopyWithImpl<$Res, _$_Crypto>
    implements _$$_CryptoCopyWith<$Res> {
  __$$_CryptoCopyWithImpl(_$_Crypto _value, $Res Function(_$_Crypto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? price = null,
    Object? changePercent24Hr = null,
  }) {
    return _then(_$_Crypto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      changePercent24Hr: null == changePercent24Hr
          ? _value.changePercent24Hr
          : changePercent24Hr // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Crypto implements _Crypto {
  _$_Crypto(
      {required this.id,
      required this.symbol,
      required this.name,
      required this.price,
      required this.changePercent24Hr});

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String name;
  @override
  final double price;
  @override
  final double changePercent24Hr;

  @override
  String toString() {
    return 'Crypto(id: $id, symbol: $symbol, name: $name, price: $price, changePercent24Hr: $changePercent24Hr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Crypto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.changePercent24Hr, changePercent24Hr) ||
                other.changePercent24Hr == changePercent24Hr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, symbol, name, price, changePercent24Hr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CryptoCopyWith<_$_Crypto> get copyWith =>
      __$$_CryptoCopyWithImpl<_$_Crypto>(this, _$identity);
}

abstract class _Crypto implements Crypto {
  factory _Crypto(
      {required final String id,
      required final String symbol,
      required final String name,
      required final double price,
      required final double changePercent24Hr}) = _$_Crypto;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get name;
  @override
  double get price;
  @override
  double get changePercent24Hr;
  @override
  @JsonKey(ignore: true)
  _$$_CryptoCopyWith<_$_Crypto> get copyWith =>
      throw _privateConstructorUsedError;
}
