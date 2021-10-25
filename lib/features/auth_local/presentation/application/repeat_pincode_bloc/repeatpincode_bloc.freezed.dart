// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repeatpincode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepeatpincodeEventTearOff {
  const _$RepeatpincodeEventTearOff();

  RepeatpincodeEventOnPressed onPressed(
      {required Pincode pincode, required Pincode prevPincode}) {
    return RepeatpincodeEventOnPressed(
      pincode: pincode,
      prevPincode: prevPincode,
    );
  }
}

/// @nodoc
const $RepeatpincodeEvent = _$RepeatpincodeEventTearOff();

/// @nodoc
mixin _$RepeatpincodeEvent {
  Pincode get pincode => throw _privateConstructorUsedError;
  Pincode get prevPincode => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pincode pincode, Pincode prevPincode) onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Pincode pincode, Pincode prevPincode)? onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pincode pincode, Pincode prevPincode)? onPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepeatpincodeEventOnPressed value) onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatpincodeEventOnPressed value)? onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatpincodeEventOnPressed value)? onPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepeatpincodeEventCopyWith<RepeatpincodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatpincodeEventCopyWith<$Res> {
  factory $RepeatpincodeEventCopyWith(
          RepeatpincodeEvent value, $Res Function(RepeatpincodeEvent) then) =
      _$RepeatpincodeEventCopyWithImpl<$Res>;
  $Res call({Pincode pincode, Pincode prevPincode});
}

/// @nodoc
class _$RepeatpincodeEventCopyWithImpl<$Res>
    implements $RepeatpincodeEventCopyWith<$Res> {
  _$RepeatpincodeEventCopyWithImpl(this._value, this._then);

  final RepeatpincodeEvent _value;
  // ignore: unused_field
  final $Res Function(RepeatpincodeEvent) _then;

  @override
  $Res call({
    Object? pincode = freezed,
    Object? prevPincode = freezed,
  }) {
    return _then(_value.copyWith(
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as Pincode,
      prevPincode: prevPincode == freezed
          ? _value.prevPincode
          : prevPincode // ignore: cast_nullable_to_non_nullable
              as Pincode,
    ));
  }
}

/// @nodoc
abstract class $RepeatpincodeEventOnPressedCopyWith<$Res>
    implements $RepeatpincodeEventCopyWith<$Res> {
  factory $RepeatpincodeEventOnPressedCopyWith(
          RepeatpincodeEventOnPressed value,
          $Res Function(RepeatpincodeEventOnPressed) then) =
      _$RepeatpincodeEventOnPressedCopyWithImpl<$Res>;
  @override
  $Res call({Pincode pincode, Pincode prevPincode});
}

/// @nodoc
class _$RepeatpincodeEventOnPressedCopyWithImpl<$Res>
    extends _$RepeatpincodeEventCopyWithImpl<$Res>
    implements $RepeatpincodeEventOnPressedCopyWith<$Res> {
  _$RepeatpincodeEventOnPressedCopyWithImpl(RepeatpincodeEventOnPressed _value,
      $Res Function(RepeatpincodeEventOnPressed) _then)
      : super(_value, (v) => _then(v as RepeatpincodeEventOnPressed));

  @override
  RepeatpincodeEventOnPressed get _value =>
      super._value as RepeatpincodeEventOnPressed;

  @override
  $Res call({
    Object? pincode = freezed,
    Object? prevPincode = freezed,
  }) {
    return _then(RepeatpincodeEventOnPressed(
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as Pincode,
      prevPincode: prevPincode == freezed
          ? _value.prevPincode
          : prevPincode // ignore: cast_nullable_to_non_nullable
              as Pincode,
    ));
  }
}

/// @nodoc

class _$RepeatpincodeEventOnPressed implements RepeatpincodeEventOnPressed {
  const _$RepeatpincodeEventOnPressed(
      {required this.pincode, required this.prevPincode});

  @override
  final Pincode pincode;
  @override
  final Pincode prevPincode;

  @override
  String toString() {
    return 'RepeatpincodeEvent.onPressed(pincode: $pincode, prevPincode: $prevPincode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RepeatpincodeEventOnPressed &&
            (identical(other.pincode, pincode) ||
                const DeepCollectionEquality()
                    .equals(other.pincode, pincode)) &&
            (identical(other.prevPincode, prevPincode) ||
                const DeepCollectionEquality()
                    .equals(other.prevPincode, prevPincode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pincode) ^
      const DeepCollectionEquality().hash(prevPincode);

  @JsonKey(ignore: true)
  @override
  $RepeatpincodeEventOnPressedCopyWith<RepeatpincodeEventOnPressed>
      get copyWith => _$RepeatpincodeEventOnPressedCopyWithImpl<
          RepeatpincodeEventOnPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pincode pincode, Pincode prevPincode) onPressed,
  }) {
    return onPressed(pincode, prevPincode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Pincode pincode, Pincode prevPincode)? onPressed,
  }) {
    return onPressed?.call(pincode, prevPincode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pincode pincode, Pincode prevPincode)? onPressed,
    required TResult orElse(),
  }) {
    if (onPressed != null) {
      return onPressed(pincode, prevPincode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepeatpincodeEventOnPressed value) onPressed,
  }) {
    return onPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatpincodeEventOnPressed value)? onPressed,
  }) {
    return onPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatpincodeEventOnPressed value)? onPressed,
    required TResult orElse(),
  }) {
    if (onPressed != null) {
      return onPressed(this);
    }
    return orElse();
  }
}

abstract class RepeatpincodeEventOnPressed implements RepeatpincodeEvent {
  const factory RepeatpincodeEventOnPressed(
      {required Pincode pincode,
      required Pincode prevPincode}) = _$RepeatpincodeEventOnPressed;

  @override
  Pincode get pincode => throw _privateConstructorUsedError;
  @override
  Pincode get prevPincode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RepeatpincodeEventOnPressedCopyWith<RepeatpincodeEventOnPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$RepeatpincodeStateTearOff {
  const _$RepeatpincodeStateTearOff();

  _RepeatpincodeState call(
      {required bool showError,
      required bool isok,
      required bool isSubmitting}) {
    return _RepeatpincodeState(
      showError: showError,
      isok: isok,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
const $RepeatpincodeState = _$RepeatpincodeStateTearOff();

/// @nodoc
mixin _$RepeatpincodeState {
  bool get showError => throw _privateConstructorUsedError;
  bool get isok => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepeatpincodeStateCopyWith<RepeatpincodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatpincodeStateCopyWith<$Res> {
  factory $RepeatpincodeStateCopyWith(
          RepeatpincodeState value, $Res Function(RepeatpincodeState) then) =
      _$RepeatpincodeStateCopyWithImpl<$Res>;
  $Res call({bool showError, bool isok, bool isSubmitting});
}

/// @nodoc
class _$RepeatpincodeStateCopyWithImpl<$Res>
    implements $RepeatpincodeStateCopyWith<$Res> {
  _$RepeatpincodeStateCopyWithImpl(this._value, this._then);

  final RepeatpincodeState _value;
  // ignore: unused_field
  final $Res Function(RepeatpincodeState) _then;

  @override
  $Res call({
    Object? showError = freezed,
    Object? isok = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isok: isok == freezed
          ? _value.isok
          : isok // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RepeatpincodeStateCopyWith<$Res>
    implements $RepeatpincodeStateCopyWith<$Res> {
  factory _$RepeatpincodeStateCopyWith(
          _RepeatpincodeState value, $Res Function(_RepeatpincodeState) then) =
      __$RepeatpincodeStateCopyWithImpl<$Res>;
  @override
  $Res call({bool showError, bool isok, bool isSubmitting});
}

/// @nodoc
class __$RepeatpincodeStateCopyWithImpl<$Res>
    extends _$RepeatpincodeStateCopyWithImpl<$Res>
    implements _$RepeatpincodeStateCopyWith<$Res> {
  __$RepeatpincodeStateCopyWithImpl(
      _RepeatpincodeState _value, $Res Function(_RepeatpincodeState) _then)
      : super(_value, (v) => _then(v as _RepeatpincodeState));

  @override
  _RepeatpincodeState get _value => super._value as _RepeatpincodeState;

  @override
  $Res call({
    Object? showError = freezed,
    Object? isok = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_RepeatpincodeState(
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isok: isok == freezed
          ? _value.isok
          : isok // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RepeatpincodeState implements _RepeatpincodeState {
  const _$_RepeatpincodeState(
      {required this.showError,
      required this.isok,
      required this.isSubmitting});

  @override
  final bool showError;
  @override
  final bool isok;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'RepeatpincodeState(showError: $showError, isok: $isok, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepeatpincodeState &&
            (identical(other.showError, showError) ||
                const DeepCollectionEquality()
                    .equals(other.showError, showError)) &&
            (identical(other.isok, isok) ||
                const DeepCollectionEquality().equals(other.isok, isok)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showError) ^
      const DeepCollectionEquality().hash(isok) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @JsonKey(ignore: true)
  @override
  _$RepeatpincodeStateCopyWith<_RepeatpincodeState> get copyWith =>
      __$RepeatpincodeStateCopyWithImpl<_RepeatpincodeState>(this, _$identity);
}

abstract class _RepeatpincodeState implements RepeatpincodeState {
  const factory _RepeatpincodeState(
      {required bool showError,
      required bool isok,
      required bool isSubmitting}) = _$_RepeatpincodeState;

  @override
  bool get showError => throw _privateConstructorUsedError;
  @override
  bool get isok => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RepeatpincodeStateCopyWith<_RepeatpincodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
