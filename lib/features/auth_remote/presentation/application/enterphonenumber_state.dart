part of 'enterphonenumber_bloc.dart';

@freezed
class EnterphonenumberState with _$EnterphonenumberState {
  const factory EnterphonenumberState({
    required final bool isSubmitting,
    required final bool noInternet,
    required final Either<Failure, None> data,
  }) = _EnterphonenumberState;
  factory EnterphonenumberState.initial() => EnterphonenumberState(
        isSubmitting: false,
        noInternet: false,
        data: right(const None()),
      );
}
