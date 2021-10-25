part of 'createpincode_bloc.dart';

@freezed
class CreatepincodeEvent with _$CreatepincodeEvent {
  const factory CreatepincodeEvent.onPressed({required final Pincode pincode}) =
      _CreatepincodeOnPressed;
}
