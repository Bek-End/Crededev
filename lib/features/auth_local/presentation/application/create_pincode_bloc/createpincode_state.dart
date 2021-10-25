part of 'createpincode_bloc.dart';

@freezed
class CreatepincodeState with _$CreatepincodeState {
  const factory CreatepincodeState({
    required final bool isSubmitting,
    required final bool showError,
    required final bool isOk,
    required final Pincode pincode,
  }) = _CreatepincodeState;

  factory CreatepincodeState.initial() => const CreatepincodeState(
        isSubmitting: false,
        showError: false,
        isOk: false,
        pincode: Pincode(pin: 1234),
      );
}
