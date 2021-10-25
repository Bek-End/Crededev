part of 'repeatpincode_bloc.dart';

@freezed
class RepeatpincodeEvent with _$RepeatpincodeEvent {
  const factory RepeatpincodeEvent.onPressed({
    required final Pincode pincode,
    required final Pincode prevPincode,
  }) = RepeatpincodeEventOnPressed;
}
