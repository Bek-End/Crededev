// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entercode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EntercodeEventTearOff {
  const _$EntercodeEventTearOff();

  EntercodeEventInitial initial({required Auth auth, required String number}) {
    return EntercodeEventInitial(
      auth: auth,
      number: number,
    );
  }

  EntercodeEventOnPressed onPressed({required String code}) {
    return EntercodeEventOnPressed(
      code: code,
    );
  }

  EntercodeEventRetry retry() {
    return const EntercodeEventRetry();
  }
}

/// @nodoc
const $EntercodeEvent = _$EntercodeEventTearOff();

/// @nodoc
mixin _$EntercodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Auth auth, String number) initial,
    required TResult Function(String code) onPressed,
    required TResult Function() retry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Auth auth, String number)? initial,
    TResult Function(String code)? onPressed,
    TResult Function()? retry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Auth auth, String number)? initial,
    TResult Function(String code)? onPressed,
    TResult Function()? retry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EntercodeEventInitial value) initial,
    required TResult Function(EntercodeEventOnPressed value) onPressed,
    required TResult Function(EntercodeEventRetry value) retry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EntercodeEventInitial value)? initial,
    TResult Function(EntercodeEventOnPressed value)? onPressed,
    TResult Function(EntercodeEventRetry value)? retry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntercodeEventInitial value)? initial,
    TResult Function(EntercodeEventOnPressed value)? onPressed,
    TResult Function(EntercodeEventRetry value)? retry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntercodeEventCopyWith<$Res> {
  factory $EntercodeEventCopyWith(
          EntercodeEvent value, $Res Function(EntercodeEvent) then) =
      _$EntercodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntercodeEventCopyWithImpl<$Res>
    implements $EntercodeEventCopyWith<$Res> {
  _$EntercodeEventCopyWithImpl(this._value, this._then);

  final EntercodeEvent _value;
  // ignore: unused_field
  final $Res Function(EntercodeEvent) _then;
}

/// @nodoc
abstract class $EntercodeEventInitialCopyWith<$Res> {
  factory $EntercodeEventInitialCopyWith(EntercodeEventInitial value,
          $Res Function(EntercodeEventInitial) then) =
      _$EntercodeEventInitialCopyWithImpl<$Res>;
  $Res call({Auth auth, String number});
}

/// @nodoc
class _$EntercodeEventInitialCopyWithImpl<$Res>
    extends _$EntercodeEventCopyWithImpl<$Res>
    implements $EntercodeEventInitialCopyWith<$Res> {
  _$EntercodeEventInitialCopyWithImpl(
      EntercodeEventInitial _value, $Res Function(EntercodeEventInitial) _then)
      : super(_value, (v) => _then(v as EntercodeEventInitial));

  @override
  EntercodeEventInitial get _value => super._value as EntercodeEventInitial;

  @override
  $Res call({
    Object? auth = freezed,
    Object? number = freezed,
  }) {
    return _then(EntercodeEventInitial(
      auth: auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EntercodeEventInitial implements EntercodeEventInitial {
  const _$EntercodeEventInitial({required this.auth, required this.number});

  @override
  final Auth auth;
  @override
  final String number;

  @override
  String toString() {
    return 'EntercodeEvent.initial(auth: $auth, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EntercodeEventInitial &&
            (identical(other.auth, auth) ||
                const DeepCollectionEquality().equals(other.auth, auth)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(auth) ^
      const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  $EntercodeEventInitialCopyWith<EntercodeEventInitial> get copyWith =>
      _$EntercodeEventInitialCopyWithImpl<EntercodeEventInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Auth auth, String number) initial,
    required TResult Function(String code) onPressed,
    required TResult Function() retry,
  }) {
    return initial(auth, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Auth auth, String number)? initial,
    TResult Function(String code)? onPressed,
    TResult Function()? retry,
  }) {
    return initial?.call(auth, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Auth auth, String number)? initial,
    TResult Function(String code)? onPressed,
    TResult Function()? retry,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(auth, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EntercodeEventInitial value) initial,
    required TResult Function(EntercodeEventOnPressed value) onPressed,
    required TResult Function(EntercodeEventRetry value) retry,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EntercodeEventInitial value)? initial,
    TResult Function(EntercodeEventOnPressed value)? onPressed,
    TResult Function(EntercodeEventRetry value)? retry,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntercodeEventInitial value)? initial,
    TResult Function(EntercodeEventOnPressed value)? onPressed,
    TResult Function(EntercodeEventRetry value)? retry,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EntercodeEventInitial implements EntercodeEvent {
  const factory EntercodeEventInitial(
      {required Auth auth, required String number}) = _$EntercodeEventInitial;

  Auth get auth => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntercodeEventInitialCopyWith<EntercodeEventInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntercodeEventOnPressedCopyWith<$Res> {
  factory $EntercodeEventOnPressedCopyWith(EntercodeEventOnPressed value,
          $Res Function(EntercodeEventOnPressed) then) =
      _$EntercodeEventOnPressedCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class _$EntercodeEventOnPressedCopyWithImpl<$Res>
    extends _$EntercodeEventCopyWithImpl<$Res>
    implements $EntercodeEventOnPressedCopyWith<$Res> {
  _$EntercodeEventOnPressedCopyWithImpl(EntercodeEventOnPressed _value,
      $Res Function(EntercodeEventOnPressed) _then)
      : super(_value, (v) => _then(v as EntercodeEventOnPressed));

  @override
  EntercodeEventOnPressed get _value => super._value as EntercodeEventOnPressed;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(EntercodeEventOnPressed(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EntercodeEventOnPressed implements EntercodeEventOnPressed {
  const _$EntercodeEventOnPressed({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'EntercodeEvent.onPressed(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EntercodeEventOnPressed &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  $EntercodeEventOnPressedCopyWith<EntercodeEventOnPressed> get copyWith =>
      _$EntercodeEventOnPressedCopyWithImpl<EntercodeEventOnPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Auth auth, String number) initial,
    required TResult Function(String code) onPressed,
    required TResult Function() retry,
  }) {
    return onPressed(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Auth auth, String number)? initial,
    TResult Function(String code)? onPressed,
    TResult Function()? retry,
  }) {
    return onPressed?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Auth auth, String number)? initial,
    TResult Function(String code)? onPressed,
    TResult Function()? retry,
    required TResult orElse(),
  }) {
    if (onPressed != null) {
      return onPressed(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EntercodeEventInitial value) initial,
    required TResult Function(EntercodeEventOnPressed value) onPressed,
    required TResult Function(EntercodeEventRetry value) retry,
  }) {
    return onPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EntercodeEventInitial value)? initial,
    TResult Function(EntercodeEventOnPressed value)? onPressed,
    TResult Function(EntercodeEventRetry value)? retry,
  }) {
    return onPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntercodeEventInitial value)? initial,
    TResult Function(EntercodeEventOnPressed value)? onPressed,
    TResult Function(EntercodeEventRetry value)? retry,
    required TResult orElse(),
  }) {
    if (onPressed != null) {
      return onPressed(this);
    }
    return orElse();
  }
}

abstract class EntercodeEventOnPressed implements EntercodeEvent {
  const factory EntercodeEventOnPressed({required String code}) =
      _$EntercodeEventOnPressed;

  String get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntercodeEventOnPressedCopyWith<EntercodeEventOnPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntercodeEventRetryCopyWith<$Res> {
  factory $EntercodeEventRetryCopyWith(
          EntercodeEventRetry value, $Res Function(EntercodeEventRetry) then) =
      _$EntercodeEventRetryCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntercodeEventRetryCopyWithImpl<$Res>
    extends _$EntercodeEventCopyWithImpl<$Res>
    implements $EntercodeEventRetryCopyWith<$Res> {
  _$EntercodeEventRetryCopyWithImpl(
      EntercodeEventRetry _value, $Res Function(EntercodeEventRetry) _then)
      : super(_value, (v) => _then(v as EntercodeEventRetry));

  @override
  EntercodeEventRetry get _value => super._value as EntercodeEventRetry;
}

/// @nodoc

class _$EntercodeEventRetry implements EntercodeEventRetry {
  const _$EntercodeEventRetry();

  @override
  String toString() {
    return 'EntercodeEvent.retry()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EntercodeEventRetry);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Auth auth, String number) initial,
    required TResult Function(String code) onPressed,
    required TResult Function() retry,
  }) {
    return retry();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Auth auth, String number)? initial,
    TResult Function(String code)? onPressed,
    TResult Function()? retry,
  }) {
    return retry?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Auth auth, String number)? initial,
    TResult Function(String code)? onPressed,
    TResult Function()? retry,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EntercodeEventInitial value) initial,
    required TResult Function(EntercodeEventOnPressed value) onPressed,
    required TResult Function(EntercodeEventRetry value) retry,
  }) {
    return retry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EntercodeEventInitial value)? initial,
    TResult Function(EntercodeEventOnPressed value)? onPressed,
    TResult Function(EntercodeEventRetry value)? retry,
  }) {
    return retry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntercodeEventInitial value)? initial,
    TResult Function(EntercodeEventOnPressed value)? onPressed,
    TResult Function(EntercodeEventRetry value)? retry,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry(this);
    }
    return orElse();
  }
}

abstract class EntercodeEventRetry implements EntercodeEvent {
  const factory EntercodeEventRetry() = _$EntercodeEventRetry;
}

/// @nodoc
class _$EntercodeStateTearOff {
  const _$EntercodeStateTearOff();

  _EntercodeState call(
      {required bool isSumitting,
      required Either<Failure, None> data,
      required bool internetConnected,
      required bool done,
      required bool wrongCode}) {
    return _EntercodeState(
      isSumitting: isSumitting,
      data: data,
      internetConnected: internetConnected,
      done: done,
      wrongCode: wrongCode,
    );
  }
}

/// @nodoc
const $EntercodeState = _$EntercodeStateTearOff();

/// @nodoc
mixin _$EntercodeState {
  bool get isSumitting => throw _privateConstructorUsedError;
  Either<Failure, None> get data => throw _privateConstructorUsedError;
  bool get internetConnected => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  bool get wrongCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntercodeStateCopyWith<EntercodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntercodeStateCopyWith<$Res> {
  factory $EntercodeStateCopyWith(
          EntercodeState value, $Res Function(EntercodeState) then) =
      _$EntercodeStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSumitting,
      Either<Failure, None> data,
      bool internetConnected,
      bool done,
      bool wrongCode});
}

/// @nodoc
class _$EntercodeStateCopyWithImpl<$Res>
    implements $EntercodeStateCopyWith<$Res> {
  _$EntercodeStateCopyWithImpl(this._value, this._then);

  final EntercodeState _value;
  // ignore: unused_field
  final $Res Function(EntercodeState) _then;

  @override
  $Res call({
    Object? isSumitting = freezed,
    Object? data = freezed,
    Object? internetConnected = freezed,
    Object? done = freezed,
    Object? wrongCode = freezed,
  }) {
    return _then(_value.copyWith(
      isSumitting: isSumitting == freezed
          ? _value.isSumitting
          : isSumitting // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<Failure, None>,
      internetConnected: internetConnected == freezed
          ? _value.internetConnected
          : internetConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      wrongCode: wrongCode == freezed
          ? _value.wrongCode
          : wrongCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$EntercodeStateCopyWith<$Res>
    implements $EntercodeStateCopyWith<$Res> {
  factory _$EntercodeStateCopyWith(
          _EntercodeState value, $Res Function(_EntercodeState) then) =
      __$EntercodeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSumitting,
      Either<Failure, None> data,
      bool internetConnected,
      bool done,
      bool wrongCode});
}

/// @nodoc
class __$EntercodeStateCopyWithImpl<$Res>
    extends _$EntercodeStateCopyWithImpl<$Res>
    implements _$EntercodeStateCopyWith<$Res> {
  __$EntercodeStateCopyWithImpl(
      _EntercodeState _value, $Res Function(_EntercodeState) _then)
      : super(_value, (v) => _then(v as _EntercodeState));

  @override
  _EntercodeState get _value => super._value as _EntercodeState;

  @override
  $Res call({
    Object? isSumitting = freezed,
    Object? data = freezed,
    Object? internetConnected = freezed,
    Object? done = freezed,
    Object? wrongCode = freezed,
  }) {
    return _then(_EntercodeState(
      isSumitting: isSumitting == freezed
          ? _value.isSumitting
          : isSumitting // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<Failure, None>,
      internetConnected: internetConnected == freezed
          ? _value.internetConnected
          : internetConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      wrongCode: wrongCode == freezed
          ? _value.wrongCode
          : wrongCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EntercodeState implements _EntercodeState {
  const _$_EntercodeState(
      {required this.isSumitting,
      required this.data,
      required this.internetConnected,
      required this.done,
      required this.wrongCode});

  @override
  final bool isSumitting;
  @override
  final Either<Failure, None> data;
  @override
  final bool internetConnected;
  @override
  final bool done;
  @override
  final bool wrongCode;

  @override
  String toString() {
    return 'EntercodeState(isSumitting: $isSumitting, data: $data, internetConnected: $internetConnected, done: $done, wrongCode: $wrongCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EntercodeState &&
            (identical(other.isSumitting, isSumitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSumitting, isSumitting)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.internetConnected, internetConnected) ||
                const DeepCollectionEquality()
                    .equals(other.internetConnected, internetConnected)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)) &&
            (identical(other.wrongCode, wrongCode) ||
                const DeepCollectionEquality()
                    .equals(other.wrongCode, wrongCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSumitting) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(internetConnected) ^
      const DeepCollectionEquality().hash(done) ^
      const DeepCollectionEquality().hash(wrongCode);

  @JsonKey(ignore: true)
  @override
  _$EntercodeStateCopyWith<_EntercodeState> get copyWith =>
      __$EntercodeStateCopyWithImpl<_EntercodeState>(this, _$identity);
}

abstract class _EntercodeState implements EntercodeState {
  const factory _EntercodeState(
      {required bool isSumitting,
      required Either<Failure, None> data,
      required bool internetConnected,
      required bool done,
      required bool wrongCode}) = _$_EntercodeState;

  @override
  bool get isSumitting => throw _privateConstructorUsedError;
  @override
  Either<Failure, None> get data => throw _privateConstructorUsedError;
  @override
  bool get internetConnected => throw _privateConstructorUsedError;
  @override
  bool get done => throw _privateConstructorUsedError;
  @override
  bool get wrongCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EntercodeStateCopyWith<_EntercodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
