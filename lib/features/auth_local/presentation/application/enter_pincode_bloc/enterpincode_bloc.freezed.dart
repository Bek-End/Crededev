// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'enterpincode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EnterpincodeEventTearOff {
  const _$EnterpincodeEventTearOff();

  EnterpincodeEventOnPressed onPressed({required Pincode pincode}) {
    return EnterpincodeEventOnPressed(
      pincode: pincode,
    );
  }

  EnterpincodeEventInitial initial() {
    return const EnterpincodeEventInitial();
  }
}

/// @nodoc
const $EnterpincodeEvent = _$EnterpincodeEventTearOff();

/// @nodoc
mixin _$EnterpincodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pincode pincode) onPressed,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Pincode pincode)? onPressed,
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pincode pincode)? onPressed,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterpincodeEventOnPressed value) onPressed,
    required TResult Function(EnterpincodeEventInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnterpincodeEventOnPressed value)? onPressed,
    TResult Function(EnterpincodeEventInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterpincodeEventOnPressed value)? onPressed,
    TResult Function(EnterpincodeEventInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterpincodeEventCopyWith<$Res> {
  factory $EnterpincodeEventCopyWith(
          EnterpincodeEvent value, $Res Function(EnterpincodeEvent) then) =
      _$EnterpincodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnterpincodeEventCopyWithImpl<$Res>
    implements $EnterpincodeEventCopyWith<$Res> {
  _$EnterpincodeEventCopyWithImpl(this._value, this._then);

  final EnterpincodeEvent _value;
  // ignore: unused_field
  final $Res Function(EnterpincodeEvent) _then;
}

/// @nodoc
abstract class $EnterpincodeEventOnPressedCopyWith<$Res> {
  factory $EnterpincodeEventOnPressedCopyWith(EnterpincodeEventOnPressed value,
          $Res Function(EnterpincodeEventOnPressed) then) =
      _$EnterpincodeEventOnPressedCopyWithImpl<$Res>;
  $Res call({Pincode pincode});
}

/// @nodoc
class _$EnterpincodeEventOnPressedCopyWithImpl<$Res>
    extends _$EnterpincodeEventCopyWithImpl<$Res>
    implements $EnterpincodeEventOnPressedCopyWith<$Res> {
  _$EnterpincodeEventOnPressedCopyWithImpl(EnterpincodeEventOnPressed _value,
      $Res Function(EnterpincodeEventOnPressed) _then)
      : super(_value, (v) => _then(v as EnterpincodeEventOnPressed));

  @override
  EnterpincodeEventOnPressed get _value =>
      super._value as EnterpincodeEventOnPressed;

  @override
  $Res call({
    Object? pincode = freezed,
  }) {
    return _then(EnterpincodeEventOnPressed(
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as Pincode,
    ));
  }
}

/// @nodoc

class _$EnterpincodeEventOnPressed implements EnterpincodeEventOnPressed {
  const _$EnterpincodeEventOnPressed({required this.pincode});

  @override
  final Pincode pincode;

  @override
  String toString() {
    return 'EnterpincodeEvent.onPressed(pincode: $pincode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EnterpincodeEventOnPressed &&
            (identical(other.pincode, pincode) ||
                const DeepCollectionEquality().equals(other.pincode, pincode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pincode);

  @JsonKey(ignore: true)
  @override
  $EnterpincodeEventOnPressedCopyWith<EnterpincodeEventOnPressed>
      get copyWith =>
          _$EnterpincodeEventOnPressedCopyWithImpl<EnterpincodeEventOnPressed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pincode pincode) onPressed,
    required TResult Function() initial,
  }) {
    return onPressed(pincode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Pincode pincode)? onPressed,
    TResult Function()? initial,
  }) {
    return onPressed?.call(pincode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pincode pincode)? onPressed,
    TResult Function()? initial,
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
    required TResult Function(EnterpincodeEventOnPressed value) onPressed,
    required TResult Function(EnterpincodeEventInitial value) initial,
  }) {
    return onPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnterpincodeEventOnPressed value)? onPressed,
    TResult Function(EnterpincodeEventInitial value)? initial,
  }) {
    return onPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterpincodeEventOnPressed value)? onPressed,
    TResult Function(EnterpincodeEventInitial value)? initial,
    required TResult orElse(),
  }) {
    if (onPressed != null) {
      return onPressed(this);
    }
    return orElse();
  }
}

abstract class EnterpincodeEventOnPressed implements EnterpincodeEvent {
  const factory EnterpincodeEventOnPressed({required Pincode pincode}) =
      _$EnterpincodeEventOnPressed;

  Pincode get pincode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnterpincodeEventOnPressedCopyWith<EnterpincodeEventOnPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterpincodeEventInitialCopyWith<$Res> {
  factory $EnterpincodeEventInitialCopyWith(EnterpincodeEventInitial value,
          $Res Function(EnterpincodeEventInitial) then) =
      _$EnterpincodeEventInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnterpincodeEventInitialCopyWithImpl<$Res>
    extends _$EnterpincodeEventCopyWithImpl<$Res>
    implements $EnterpincodeEventInitialCopyWith<$Res> {
  _$EnterpincodeEventInitialCopyWithImpl(EnterpincodeEventInitial _value,
      $Res Function(EnterpincodeEventInitial) _then)
      : super(_value, (v) => _then(v as EnterpincodeEventInitial));

  @override
  EnterpincodeEventInitial get _value =>
      super._value as EnterpincodeEventInitial;
}

/// @nodoc

class _$EnterpincodeEventInitial implements EnterpincodeEventInitial {
  const _$EnterpincodeEventInitial();

  @override
  String toString() {
    return 'EnterpincodeEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EnterpincodeEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pincode pincode) onPressed,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Pincode pincode)? onPressed,
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pincode pincode)? onPressed,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterpincodeEventOnPressed value) onPressed,
    required TResult Function(EnterpincodeEventInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnterpincodeEventOnPressed value)? onPressed,
    TResult Function(EnterpincodeEventInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterpincodeEventOnPressed value)? onPressed,
    TResult Function(EnterpincodeEventInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EnterpincodeEventInitial implements EnterpincodeEvent {
  const factory EnterpincodeEventInitial() = _$EnterpincodeEventInitial;
}

/// @nodoc
class _$EnterpincodeStateTearOff {
  const _$EnterpincodeStateTearOff();

  _EnterpincodeState call(
      {required bool showError,
      required bool isOK,
      required bool isSubmitting,
      required bool checkBioMetric}) {
    return _EnterpincodeState(
      showError: showError,
      isOK: isOK,
      isSubmitting: isSubmitting,
      checkBioMetric: checkBioMetric,
    );
  }
}

/// @nodoc
const $EnterpincodeState = _$EnterpincodeStateTearOff();

/// @nodoc
mixin _$EnterpincodeState {
  bool get showError => throw _privateConstructorUsedError;
  bool get isOK => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get checkBioMetric => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnterpincodeStateCopyWith<EnterpincodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterpincodeStateCopyWith<$Res> {
  factory $EnterpincodeStateCopyWith(
          EnterpincodeState value, $Res Function(EnterpincodeState) then) =
      _$EnterpincodeStateCopyWithImpl<$Res>;
  $Res call(
      {bool showError, bool isOK, bool isSubmitting, bool checkBioMetric});
}

/// @nodoc
class _$EnterpincodeStateCopyWithImpl<$Res>
    implements $EnterpincodeStateCopyWith<$Res> {
  _$EnterpincodeStateCopyWithImpl(this._value, this._then);

  final EnterpincodeState _value;
  // ignore: unused_field
  final $Res Function(EnterpincodeState) _then;

  @override
  $Res call({
    Object? showError = freezed,
    Object? isOK = freezed,
    Object? isSubmitting = freezed,
    Object? checkBioMetric = freezed,
  }) {
    return _then(_value.copyWith(
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isOK: isOK == freezed
          ? _value.isOK
          : isOK // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      checkBioMetric: checkBioMetric == freezed
          ? _value.checkBioMetric
          : checkBioMetric // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$EnterpincodeStateCopyWith<$Res>
    implements $EnterpincodeStateCopyWith<$Res> {
  factory _$EnterpincodeStateCopyWith(
          _EnterpincodeState value, $Res Function(_EnterpincodeState) then) =
      __$EnterpincodeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showError, bool isOK, bool isSubmitting, bool checkBioMetric});
}

/// @nodoc
class __$EnterpincodeStateCopyWithImpl<$Res>
    extends _$EnterpincodeStateCopyWithImpl<$Res>
    implements _$EnterpincodeStateCopyWith<$Res> {
  __$EnterpincodeStateCopyWithImpl(
      _EnterpincodeState _value, $Res Function(_EnterpincodeState) _then)
      : super(_value, (v) => _then(v as _EnterpincodeState));

  @override
  _EnterpincodeState get _value => super._value as _EnterpincodeState;

  @override
  $Res call({
    Object? showError = freezed,
    Object? isOK = freezed,
    Object? isSubmitting = freezed,
    Object? checkBioMetric = freezed,
  }) {
    return _then(_EnterpincodeState(
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isOK: isOK == freezed
          ? _value.isOK
          : isOK // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      checkBioMetric: checkBioMetric == freezed
          ? _value.checkBioMetric
          : checkBioMetric // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EnterpincodeState implements _EnterpincodeState {
  const _$_EnterpincodeState(
      {required this.showError,
      required this.isOK,
      required this.isSubmitting,
      required this.checkBioMetric});

  @override
  final bool showError;
  @override
  final bool isOK;
  @override
  final bool isSubmitting;
  @override
  final bool checkBioMetric;

  @override
  String toString() {
    return 'EnterpincodeState(showError: $showError, isOK: $isOK, isSubmitting: $isSubmitting, checkBioMetric: $checkBioMetric)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EnterpincodeState &&
            (identical(other.showError, showError) ||
                const DeepCollectionEquality()
                    .equals(other.showError, showError)) &&
            (identical(other.isOK, isOK) ||
                const DeepCollectionEquality().equals(other.isOK, isOK)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.checkBioMetric, checkBioMetric) ||
                const DeepCollectionEquality()
                    .equals(other.checkBioMetric, checkBioMetric)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showError) ^
      const DeepCollectionEquality().hash(isOK) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(checkBioMetric);

  @JsonKey(ignore: true)
  @override
  _$EnterpincodeStateCopyWith<_EnterpincodeState> get copyWith =>
      __$EnterpincodeStateCopyWithImpl<_EnterpincodeState>(this, _$identity);
}

abstract class _EnterpincodeState implements EnterpincodeState {
  const factory _EnterpincodeState(
      {required bool showError,
      required bool isOK,
      required bool isSubmitting,
      required bool checkBioMetric}) = _$_EnterpincodeState;

  @override
  bool get showError => throw _privateConstructorUsedError;
  @override
  bool get isOK => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get checkBioMetric => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EnterpincodeStateCopyWith<_EnterpincodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
