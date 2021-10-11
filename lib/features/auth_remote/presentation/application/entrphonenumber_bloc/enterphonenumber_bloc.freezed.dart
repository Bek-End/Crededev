// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'enterphonenumber_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EnterphonenumberEventTearOff {
  const _$EnterphonenumberEventTearOff();

  EnterphonenumberEventOnPressed onPressed({required String phoneNumber}) {
    return EnterphonenumberEventOnPressed(
      phoneNumber: phoneNumber,
    );
  }
}

/// @nodoc
const $EnterphonenumberEvent = _$EnterphonenumberEventTearOff();

/// @nodoc
mixin _$EnterphonenumberEvent {
  String get phoneNumber => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? onPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterphonenumberEventOnPressed value) onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnterphonenumberEventOnPressed value)? onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterphonenumberEventOnPressed value)? onPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnterphonenumberEventCopyWith<EnterphonenumberEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterphonenumberEventCopyWith<$Res> {
  factory $EnterphonenumberEventCopyWith(EnterphonenumberEvent value,
          $Res Function(EnterphonenumberEvent) then) =
      _$EnterphonenumberEventCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$EnterphonenumberEventCopyWithImpl<$Res>
    implements $EnterphonenumberEventCopyWith<$Res> {
  _$EnterphonenumberEventCopyWithImpl(this._value, this._then);

  final EnterphonenumberEvent _value;
  // ignore: unused_field
  final $Res Function(EnterphonenumberEvent) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $EnterphonenumberEventOnPressedCopyWith<$Res>
    implements $EnterphonenumberEventCopyWith<$Res> {
  factory $EnterphonenumberEventOnPressedCopyWith(
          EnterphonenumberEventOnPressed value,
          $Res Function(EnterphonenumberEventOnPressed) then) =
      _$EnterphonenumberEventOnPressedCopyWithImpl<$Res>;
  @override
  $Res call({String phoneNumber});
}

/// @nodoc
class _$EnterphonenumberEventOnPressedCopyWithImpl<$Res>
    extends _$EnterphonenumberEventCopyWithImpl<$Res>
    implements $EnterphonenumberEventOnPressedCopyWith<$Res> {
  _$EnterphonenumberEventOnPressedCopyWithImpl(
      EnterphonenumberEventOnPressed _value,
      $Res Function(EnterphonenumberEventOnPressed) _then)
      : super(_value, (v) => _then(v as EnterphonenumberEventOnPressed));

  @override
  EnterphonenumberEventOnPressed get _value =>
      super._value as EnterphonenumberEventOnPressed;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(EnterphonenumberEventOnPressed(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnterphonenumberEventOnPressed
    implements EnterphonenumberEventOnPressed {
  const _$EnterphonenumberEventOnPressed({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'EnterphonenumberEvent.onPressed(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EnterphonenumberEventOnPressed &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  $EnterphonenumberEventOnPressedCopyWith<EnterphonenumberEventOnPressed>
      get copyWith => _$EnterphonenumberEventOnPressedCopyWithImpl<
          EnterphonenumberEventOnPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) onPressed,
  }) {
    return onPressed(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? onPressed,
  }) {
    return onPressed?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? onPressed,
    required TResult orElse(),
  }) {
    if (onPressed != null) {
      return onPressed(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterphonenumberEventOnPressed value) onPressed,
  }) {
    return onPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnterphonenumberEventOnPressed value)? onPressed,
  }) {
    return onPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterphonenumberEventOnPressed value)? onPressed,
    required TResult orElse(),
  }) {
    if (onPressed != null) {
      return onPressed(this);
    }
    return orElse();
  }
}

abstract class EnterphonenumberEventOnPressed implements EnterphonenumberEvent {
  const factory EnterphonenumberEventOnPressed({required String phoneNumber}) =
      _$EnterphonenumberEventOnPressed;

  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EnterphonenumberEventOnPressedCopyWith<EnterphonenumberEventOnPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$EnterphonenumberStateTearOff {
  const _$EnterphonenumberStateTearOff();

  _EnterphonenumberState call(
      {required bool isSubmitting,
      required Either<Failure, Either<None, Auth>> data,
      required bool noInternet}) {
    return _EnterphonenumberState(
      isSubmitting: isSubmitting,
      data: data,
      noInternet: noInternet,
    );
  }
}

/// @nodoc
const $EnterphonenumberState = _$EnterphonenumberStateTearOff();

/// @nodoc
mixin _$EnterphonenumberState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  Either<Failure, Either<None, Auth>> get data =>
      throw _privateConstructorUsedError;
  bool get noInternet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnterphonenumberStateCopyWith<EnterphonenumberState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterphonenumberStateCopyWith<$Res> {
  factory $EnterphonenumberStateCopyWith(EnterphonenumberState value,
          $Res Function(EnterphonenumberState) then) =
      _$EnterphonenumberStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      Either<Failure, Either<None, Auth>> data,
      bool noInternet});
}

/// @nodoc
class _$EnterphonenumberStateCopyWithImpl<$Res>
    implements $EnterphonenumberStateCopyWith<$Res> {
  _$EnterphonenumberStateCopyWithImpl(this._value, this._then);

  final EnterphonenumberState _value;
  // ignore: unused_field
  final $Res Function(EnterphonenumberState) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? data = freezed,
    Object? noInternet = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Either<None, Auth>>,
      noInternet: noInternet == freezed
          ? _value.noInternet
          : noInternet // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$EnterphonenumberStateCopyWith<$Res>
    implements $EnterphonenumberStateCopyWith<$Res> {
  factory _$EnterphonenumberStateCopyWith(_EnterphonenumberState value,
          $Res Function(_EnterphonenumberState) then) =
      __$EnterphonenumberStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      Either<Failure, Either<None, Auth>> data,
      bool noInternet});
}

/// @nodoc
class __$EnterphonenumberStateCopyWithImpl<$Res>
    extends _$EnterphonenumberStateCopyWithImpl<$Res>
    implements _$EnterphonenumberStateCopyWith<$Res> {
  __$EnterphonenumberStateCopyWithImpl(_EnterphonenumberState _value,
      $Res Function(_EnterphonenumberState) _then)
      : super(_value, (v) => _then(v as _EnterphonenumberState));

  @override
  _EnterphonenumberState get _value => super._value as _EnterphonenumberState;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? data = freezed,
    Object? noInternet = freezed,
  }) {
    return _then(_EnterphonenumberState(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Either<None, Auth>>,
      noInternet: noInternet == freezed
          ? _value.noInternet
          : noInternet // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EnterphonenumberState implements _EnterphonenumberState {
  const _$_EnterphonenumberState(
      {required this.isSubmitting,
      required this.data,
      required this.noInternet});

  @override
  final bool isSubmitting;
  @override
  final Either<Failure, Either<None, Auth>> data;
  @override
  final bool noInternet;

  @override
  String toString() {
    return 'EnterphonenumberState(isSubmitting: $isSubmitting, data: $data, noInternet: $noInternet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EnterphonenumberState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.noInternet, noInternet) ||
                const DeepCollectionEquality()
                    .equals(other.noInternet, noInternet)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(noInternet);

  @JsonKey(ignore: true)
  @override
  _$EnterphonenumberStateCopyWith<_EnterphonenumberState> get copyWith =>
      __$EnterphonenumberStateCopyWithImpl<_EnterphonenumberState>(
          this, _$identity);
}

abstract class _EnterphonenumberState implements EnterphonenumberState {
  const factory _EnterphonenumberState(
      {required bool isSubmitting,
      required Either<Failure, Either<None, Auth>> data,
      required bool noInternet}) = _$_EnterphonenumberState;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Either<Failure, Either<None, Auth>> get data =>
      throw _privateConstructorUsedError;
  @override
  bool get noInternet => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EnterphonenumberStateCopyWith<_EnterphonenumberState> get copyWith =>
      throw _privateConstructorUsedError;
}
