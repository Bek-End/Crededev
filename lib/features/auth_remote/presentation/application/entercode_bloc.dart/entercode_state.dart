part of 'entercode_bloc.dart';

@freezed
class EntercodeState with _$EntercodeState {
  const factory EntercodeState({
    required final bool isSumitting,
    required final Either<Failure, None> data,
    required final bool internetConnected,
    required final bool done,
    required final bool wrongCode,
  }) = _EntercodeState;
  factory EntercodeState.initial() => EntercodeState(
        isSumitting: false,
        internetConnected: true,
        data: right(
          const None(),
        ),
        done: false,
        wrongCode: false,
      );
}
