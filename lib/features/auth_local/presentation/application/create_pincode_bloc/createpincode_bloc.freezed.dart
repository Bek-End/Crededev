// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'createpincode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreatepincodeEventTearOff {
  const _$CreatepincodeEventTearOff();

  _CreatepincodeOnPressed onPressed({required Pincode pincode}) {
    return _CreatepincodeOnPressed(
      pincode: pincode,
    );
  }
}

/// @nodoc
const $CreatepincodeEvent = _$CreatepincodeEventTearOff();

/// @nodoc
mixin _$CreatepincodeEvent {
  Pincode get pincode => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pincode pincode) onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Pincode pincode)? onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pincode pincode)? onPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatepincodeOnPressed value) onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreatepincodeOnPressed value)? onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatepincodeOnPressed value)? onPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatepincodeEventCopyWith<CreatepincodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatepincodeEventCopyWith<$Res> {
  factory $CreatepincodeEventCopyWith(
          CreatepincodeEvent value, $Res Function(CreatepincodeEvent) then) =
      _$CreatepincodeEventCopyWithImpl<$Res>;
  $Res call({Pincode pincode});
}

/// @nodoc
class _$CreatepincodeEventCopyWithImpl<$Res>
    implements $CreatepincodeEventCopyWith<$Res> {
  _$CreatepincodeEventCopyWithImpl(this._value, this._then);

  final CreatepincodeEvent _value;
  // ignore: unused_field
  final $Res Function(CreatepincodeEvent) _then;

  @override
  $Res call({
    Object? pincode = freezed,
  }) {
    return _then(_value.copyWith(
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as Pincode,
    ));
  }
}

/// @nodoc
abstract class _$CreatepincodeOnPressedCopyWith<$Res>
    implements $CreatepincodeEventCopyWith<$Res> {
  factory _$CreatepincodeOnPressedCopyWith(_CreatepincodeOnPressed value,
          $Res Function(_CreatepincodeOnPressed) then) =
      __$CreatepincodeOnPressedCopyWithImpl<$Res>;
  @override
  $Res call({Pincode pincode});
}

/// @nodoc
class __$CreatepincodeOnPressedCopyWithImpl<$Res>
    extends _$CreatepincodeEventCopyWithImpl<$Res>
    implements _$CreatepincodeOnPressedCopyWith<$Res> {
  __$CreatepincodeOnPressedCopyWithImpl(_CreatepincodeOnPressed _value,
      $Res Function(_CreatepincodeOnPressed) _then)
      : super(_value, (v) => _then(v as _CreatepincodeOnPressed));

  @override
  _CreatepincodeOnPressed get _value => super._value as _CreatepincodeOnPressed;

  @override
  $Res call({
    Object? pincode = freezed,
  }) {
    return _then(_CreatepincodeOnPressed(
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as Pincode,
    ));
  }
}

/// @nodoc

class _$_CreatepincodeOnPressed implements _CreatepincodeOnPressed {
  const _$_CreatepincodeOnPressed({required this.pincode});

  @override
  final Pincode pincode;

  @override
  String toString() {
    return 'CreatepincodeEvent.onPressed(pincode: $pincode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreatepincodeOnPressed &&
            (identical(other.pincode, pincode) ||
                const DeepCollectionEquality().equals(other.pincode, pincode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pincode);

  @JsonKey(ignore: true)
  @override
  _$CreatepincodeOnPressedCopyWith<_CreatepincodeOnPressed> get copyWith =>
      __$CreatepincodeOnPressedCopyWithImpl<_CreatepincodeOnPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pincode pincode) onPressed,
  }) {
    return onPressed(pincode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Pincode pincode)? onPressed,
  }) {
    return onPressed?.call(pincode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pincode pincode)? onPressed,
    required TResult orElse(),
  }) {
    if (onPressed != null) {
      return onPressed(pincode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatepincodeOnPressed value) onPressed,
  }) {
    return onPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreatepincodeOnPressed value)? onPressed,
  }) {
    return onPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatepincodeOnPressed value)? onPressed,
    required TResult orElse(),
  }) {
    if (onPressed != null) {
      return onPressed(this);
    }
    return orElse();
  }
}

abstract class _CreatepincodeOnPressed implements CreatepincodeEvent {
  const factory _CreatepincodeOnPressed({required Pincode pincode}) =
      _$_CreatepincodeOnPressed;

  @override
  Pincode get pincode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreatepincodeOnPressedCopyWith<_CreatepincodeOnPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreatepincodeStateTearOff {
  const _$CreatepincodeStateTearOff();

  _CreatepincodeState call(
      {required bool isSubmitting,
      required bool showError,
      required bool isOk,
      required Pincode pincode}) {
    return _CreatepincodeState(
      isSubmitting: isSubmitting,
      showError: showError,
      isOk: isOk,
      pincode: pincode,
    );
  }
}

/// @nodoc
const $CreatepincodeState = _$CreatepincodeStateTearOff();

/// @nodoc
mixin _$CreatepincodeState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get isOk => throw _privateConstructorUsedError;
  Pincode get pincode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatepincodeStateCopyWith<CreatepincodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatepincodeStateCopyWith<$Res> {
  factory $CreatepincodeStateCopyWith(
          CreatepincodeState value, $Res Function(CreatepincodeState) then) =
      _$CreatepincodeStateCopyWithImpl<$Res>;
  $Res call({bool isSubmitting, bool showError, bool isOk, Pincode pincode});
}

/// @nodoc
class _$CreatepincodeStateCopyWithImpl<$Res>
    implements $CreatepincodeStateCopyWith<$Res> {
  _$CreatepincodeStateCopyWithImpl(this._value, this._then);

  final CreatepincodeState _value;
  // ignore: unused_field
  final $Res Function(CreatepincodeState) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? showError = freezed,
    Object? isOk = freezed,
    Object? pincode = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isOk: isOk == freezed
          ? _value.isOk
          : isOk // ignore: cast_nullable_to_non_nullable
              as bool,
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as Pincode,
    ));
  }
}

/// @nodoc
abstract class _$CreatepincodeStateCopyWith<$Res>
    implements $CreatepincodeStateCopyWith<$Res> {
  factory _$CreatepincodeStateCopyWith(
          _CreatepincodeState value, $Res Function(_CreatepincodeState) then) =
      __$CreatepincodeStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isSubmitting, bool showError, bool isOk, Pincode pincode});
}

/// @nodoc
class __$CreatepincodeStateCopyWithImpl<$Res>
    extends _$CreatepincodeStateCopyWithImpl<$Res>
    implements _$CreatepincodeStateCopyWith<$Res> {
  __$CreatepincodeStateCopyWithImpl(
      _CreatepincodeState _value, $Res Function(_CreatepincodeState) _then)
      : super(_value, (v) => _then(v as _CreatepincodeState));

  @override
  _CreatepincodeState get _value => super._value as _CreatepincodeState;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? showError = freezed,
    Object? isOk = freezed,
    Object? pincode = freezed,
  }) {
    return _then(_CreatepincodeState(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isOk: isOk == freezed
          ? _value.isOk
          : isOk // ignore: cast_nullable_to_non_nullable
              as bool,
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as Pincode,
    ));
  }
}

/// @nodoc

class _$_CreatepincodeState implements _CreatepincodeState {
  const _$_CreatepincodeState(
      {required this.isSubmitting,
      required this.showError,
      required this.isOk,
      required this.pincode});

  @override
  final bool isSubmitting;
  @override
  final bool showError;
  @override
  final bool isOk;
  @override
  final Pincode pincode;

  @override
  String toString() {
    return 'CreatepincodeState(isSubmitting: $isSubmitting, showError: $showError, isOk: $isOk, pincode: $pincode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreatepincodeState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showError, showError) ||
                const DeepCollectionEquality()
                    .equals(other.showError, showError)) &&
            (identical(other.isOk, isOk) ||
                const DeepCollectionEquality().equals(other.isOk, isOk)) &&
            (identical(other.pincode, pincode) ||
                const DeepCollectionEquality().equals(other.pincode, pincode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showError) ^
      const DeepCollectionEquality().hash(isOk) ^
      const DeepCollectionEquality().hash(pincode);

  @JsonKey(ignore: true)
  @override
  _$CreatepincodeStateCopyWith<_CreatepincodeState> get copyWith =>
      __$CreatepincodeStateCopyWithImpl<_CreatepincodeState>(this, _$identity);
}

abstract class _CreatepincodeState implements CreatepincodeState {
  const factory _CreatepincodeState(
      {required bool isSubmitting,
      required bool showError,
      required bool isOk,
      required Pincode pincode}) = _$_CreatepincodeState;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get showError => throw _privateConstructorUsedError;
  @override
  bool get isOk => throw _privateConstructorUsedError;
  @override
  Pincode get pincode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreatepincodeStateCopyWith<_CreatepincodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
