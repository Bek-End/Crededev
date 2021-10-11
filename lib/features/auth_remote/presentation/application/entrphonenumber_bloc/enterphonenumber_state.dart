part of 'enterphonenumber_bloc.dart';

@freezed
class EnterphonenumberState with _$EnterphonenumberState {
  const factory EnterphonenumberState({
    required final bool isSubmitting,
    required final Either<Failure, Either<None, Auth>> data,
    required final bool noInternet,
  }) = _EnterphonenumberState;
  factory EnterphonenumberState.initial() => EnterphonenumberState(
        isSubmitting: false,
        data: right(
          left(
            const None(),
          ),
        ),
        noInternet: false,
      );
}
