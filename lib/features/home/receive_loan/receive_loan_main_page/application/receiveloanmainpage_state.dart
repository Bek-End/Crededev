part of 'receiveloanmainpage_bloc.dart';

@freezed
class ReceiveloanmainpageState with _$ReceiveloanmainpageState {
  const factory ReceiveloanmainpageState({
    required final bool isSubmitting,
    required final bool noInternet,
    required final bool hasServerError,
    required final LoanMainInfo loanMainInfo,
  }) = _ReceiveloanmainpageState;
  factory ReceiveloanmainpageState.initial() => ReceiveloanmainpageState(
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
