part of 'giveloanmainpage_bloc.dart';

@freezed
class GiveloanmainpageState with _$GiveloanmainpageState {
  const factory GiveloanmainpageState({
    required final bool isSubmitting,
    required final bool noInternet,
    required final bool hasServerError,
    required final LoanMainInfo loanMainInfo,
  }) = _GiveloanmainpageState;
  factory GiveloanmainpageState.initial() => GiveloanmainpageState(
        isSubmitting: false,
        noInternet: false,
        hasServerError: false,
        loanMainInfo: LoanMainInfo(
          totalAmount: 0,
          nextPaymentAmount: 0,
          amountOfOverdue: 0,
          paidOutAmount: 0,
        ),
      );
}
