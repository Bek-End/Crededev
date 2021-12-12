import 'package:credo_p2p/features/home/core/domain/entities/loan_main_info.dart';

class GiveLoanMainInfoModel extends LoanMainInfo {
  GiveLoanMainInfoModel({
    required final int totalInvestmentAmount,
    required final int nextInvestmentPayout,
    required final int amountOfOverdueInvesments,
    required final int paidOutInvestmentAmount,
  }) : super(
          totalAmount: totalInvestmentAmount,
          nextPaymentAmount: nextInvestmentPayout,
          amountOfOverdue: amountOfOverdueInvesments,
          paidOutAmount: paidOutInvestmentAmount,
        );

  factory GiveLoanMainInfoModel.fromJson(dynamic json) {
    return GiveLoanMainInfoModel(
      totalInvestmentAmount: json['totalInvestmentAmount'] as int,
      nextInvestmentPayout: json['nextInvestmentPayout'] as int,
      amountOfOverdueInvesments: json['amountOfOverdueInvestments'] as int,
      paidOutInvestmentAmount: json['paidOutInvestmentAmount'] as int,
    );
  }

  Map<String, Object> toJson() => {
        "totalInvestmentAmount": totalAmount,
        "nextInvestmentPayout": nextPaymentAmount,
        "amountOfOverdueInvesments": amountOfOverdue,
        "paidOutInvestmentAmount": paidOutAmount,
      };
}
