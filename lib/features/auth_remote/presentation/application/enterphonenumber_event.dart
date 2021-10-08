part of 'enterphonenumber_bloc.dart';

@freezed
class EnterphonenumberEvent with _$EnterphonenumberEvent {
  const factory EnterphonenumberEvent.initial() = EnterphonenumberEventIntial;
  const factory EnterphonenumberEvent.onPressed({
    required final String phoneNumber,
  }) = EnterphonenumberEventOnPressed;
}
