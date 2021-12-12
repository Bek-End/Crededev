import 'package:credo_p2p/features/home/core/domain/entities/loan_main_info.dart';

class ReceiveLoanMainInfoModel extends LoanMainInfo {
  ReceiveLoanMainInfoModel({
    required final int totalLoanAmount,
    required final int nextLoanPaymentAmount,
    required final int amountOfOverdueLoans,
    required final int paidOutLoanAmount,
  }) : super(
          totalAmount: totalLoanAmount,
          nextPaymentAmount: nextLoanPaymentAmount,
          amountOfOverdue: amountOfOverdueLoans,
          paidOutAmount: paidOutLoanAmount,
        );

  factory ReceiveLoanMainInfoModel.fromJson(dynamic json) {
    return ReceiveLoanMainInfoModel(
      totalLoanAmount: json['totalLoanAmount'] as int,
      nextLoanPaymentAmount: json['nextLoanPaymentAmount'] as int,
      amountOfOverdueLoans: json['amountOfOverdueLoans'] as int,
      paidOutLoanAmount: json['paidOutLoanAmount'] as int,
    );
  }

  Map<String, Object> toJson() => {
        "totalLoanAmount": totalAmount,
        "nextLoanPaymentAmount": nextPaymentAmount,
        "amountOfOverdueLoans": amountOfOverdue,
        "paidOutLoanAmount": paidOutAmount,
      };
}
