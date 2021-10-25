part of 'enterpincode_bloc.dart';

@freezed
class EnterpincodeEvent with _$EnterpincodeEvent {
  const factory EnterpincodeEvent.onPressed({
    required final Pincode pincode,
  }) = EnterpincodeEventOnPressed;
}
