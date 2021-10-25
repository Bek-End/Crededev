part of 'repeatpincode_bloc.dart';

@freezed
class RepeatpincodeState with _$RepeatpincodeState {
  const factory RepeatpincodeState({
    required final bool showError,
    required final bool isok,
    required final bool isSubmitting,
  }) = _RepeatpincodeState;
  factory RepeatpincodeState.initial() => const RepeatpincodeState(
        isok: false,
        showError: false,
        isSubmitting: false,
      );
}
