part of 'enterpincode_bloc.dart';

@freezed
class EnterpincodeState with _$EnterpincodeState {
  const factory EnterpincodeState({
    required final bool showError,
    required final bool isOK,
    required final bool isSubmitting,
    required final bool checkBioMetric,
  }) = _EnterpincodeState;
  factory EnterpincodeState.initial() => const EnterpincodeState(
        showError: false,
        isOK: false,
        isSubmitting: false,
        checkBioMetric: false,
      );
}
