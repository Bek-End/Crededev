// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'faq_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FaqEventTearOff {
  const _$FaqEventTearOff();

  _FaqInitialEvent initial() {
    return const _FaqInitialEvent();
  }
}

/// @nodoc
const $FaqEvent = _$FaqEventTearOff();

/// @nodoc
mixin _$FaqEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FaqInitialEvent value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FaqInitialEvent value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqInitialEvent value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqEventCopyWith<$Res> {
  factory $FaqEventCopyWith(FaqEvent value, $Res Function(FaqEvent) then) =
      _$FaqEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FaqEventCopyWithImpl<$Res> implements $FaqEventCopyWith<$Res> {
  _$FaqEventCopyWithImpl(this._value, this._then);

  final FaqEvent _value;
  // ignore: unused_field
  final $Res Function(FaqEvent) _then;
}

/// @nodoc
abstract class _$FaqInitialEventCopyWith<$Res> {
  factory _$FaqInitialEventCopyWith(
          _FaqInitialEvent value, $Res Function(_FaqInitialEvent) then) =
      __$FaqInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$FaqInitialEventCopyWithImpl<$Res> extends _$FaqEventCopyWithImpl<$Res>
    implements _$FaqInitialEventCopyWith<$Res> {
  __$FaqInitialEventCopyWithImpl(
      _FaqInitialEvent _value, $Res Function(_FaqInitialEvent) _then)
      : super(_value, (v) => _then(v as _FaqInitialEvent));

  @override
  _FaqInitialEvent get _value => super._value as _FaqInitialEvent;
}

/// @nodoc

class _$_FaqInitialEvent implements _FaqInitialEvent {
  const _$_FaqInitialEvent();

  @override
  String toString() {
    return 'FaqEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FaqInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_FaqInitialEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FaqInitialEvent value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqInitialEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FaqInitialEvent implements FaqEvent {
  const factory _FaqInitialEvent() = _$_FaqInitialEvent;
}

/// @nodoc
class _$FaqStateTearOff {
  const _$FaqStateTearOff();

  _FaqState call(
      {required bool isSubmitting,
      required bool noInternet,
      required bool serverError,
      required List<Faq> faqs}) {
    return _FaqState(
      isSubmitting: isSubmitting,
      noInternet: noInternet,
      serverError: serverError,
      faqs: faqs,
    );
  }
}

/// @nodoc
const $FaqState = _$FaqStateTearOff();

/// @nodoc
mixin _$FaqState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get noInternet => throw _privateConstructorUsedError;
  bool get serverError => throw _privateConstructorUsedError;
  List<Faq> get faqs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FaqStateCopyWith<FaqState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqStateCopyWith<$Res> {
  factory $FaqStateCopyWith(FaqState value, $Res Function(FaqState) then) =
      _$FaqStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting, bool noInternet, bool serverError, List<Faq> faqs});
}

/// @nodoc
class _$FaqStateCopyWithImpl<$Res> implements $FaqStateCopyWith<$Res> {
  _$FaqStateCopyWithImpl(this._value, this._then);

  final FaqState _value;
  // ignore: unused_field
  final $Res Function(FaqState) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? noInternet = freezed,
    Object? serverError = freezed,
    Object? faqs = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      noInternet: noInternet == freezed
          ? _value.noInternet
          : noInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      serverError: serverError == freezed
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as bool,
      faqs: faqs == freezed
          ? _value.faqs
          : faqs // ignore: cast_nullable_to_non_nullable
              as List<Faq>,
    ));
  }
}

/// @nodoc
abstract class _$FaqStateCopyWith<$Res> implements $FaqStateCopyWith<$Res> {
  factory _$FaqStateCopyWith(_FaqState value, $Res Function(_FaqState) then) =
      __$FaqStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting, bool noInternet, bool serverError, List<Faq> faqs});
}

/// @nodoc
class __$FaqStateCopyWithImpl<$Res> extends _$FaqStateCopyWithImpl<$Res>
    implements _$FaqStateCopyWith<$Res> {
  __$FaqStateCopyWithImpl(_FaqState _value, $Res Function(_FaqState) _then)
      : super(_value, (v) => _then(v as _FaqState));

  @override
  _FaqState get _value => super._value as _FaqState;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? noInternet = freezed,
    Object? serverError = freezed,
    Object? faqs = freezed,
  }) {
    return _then(_FaqState(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      noInternet: noInternet == freezed
          ? _value.noInternet
          : noInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      serverError: serverError == freezed
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as bool,
      faqs: faqs == freezed
          ? _value.faqs
          : faqs // ignore: cast_nullable_to_non_nullable
              as List<Faq>,
    ));
  }
}

/// @nodoc

class _$_FaqState implements _FaqState {
  const _$_FaqState(
      {required this.isSubmitting,
      required this.noInternet,
      required this.serverError,
      required this.faqs});

  @override
  final bool isSubmitting;
  @override
  final bool noInternet;
  @override
  final bool serverError;
  @override
  final List<Faq> faqs;

  @override
  String toString() {
    return 'FaqState(isSubmitting: $isSubmitting, noInternet: $noInternet, serverError: $serverError, faqs: $faqs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FaqState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.noInternet, noInternet) ||
                const DeepCollectionEquality()
                    .equals(other.noInternet, noInternet)) &&
            (identical(other.serverError, serverError) ||
                const DeepCollectionEquality()
                    .equals(other.serverError, serverError)) &&
            (identical(other.faqs, faqs) ||
                const DeepCollectionEquality().equals(other.faqs, faqs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(noInternet) ^
      const DeepCollectionEquality().hash(serverError) ^
      const DeepCollectionEquality().hash(faqs);

  @JsonKey(ignore: true)
  @override
  _$FaqStateCopyWith<_FaqState> get copyWith =>
      __$FaqStateCopyWithImpl<_FaqState>(this, _$identity);
}

abstract class _FaqState implements FaqState {
  const factory _FaqState(
      {required bool isSubmitting,
      required bool noInternet,
      required bool serverError,
      required List<Faq> faqs}) = _$_FaqState;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get noInternet => throw _privateConstructorUsedError;
  @override
  bool get serverError => throw _privateConstructorUsedError;
  @override
  List<Faq> get faqs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FaqStateCopyWith<_FaqState> get copyWith =>
      throw _privateConstructorUsedError;
}
