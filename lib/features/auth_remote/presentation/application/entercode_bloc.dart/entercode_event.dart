part of 'entercode_bloc.dart';

@freezed
class EntercodeEvent with _$EntercodeEvent {
  const factory EntercodeEvent.initial({
    required final Auth auth,
    required final String number,
  }) = EntercodeEventInitial;
  const factory EntercodeEvent.onPressed({
    required final String code,
  }) = EntercodeEventOnPressed;
  const factory EntercodeEvent.retry() = EntercodeEventRetry;
}
