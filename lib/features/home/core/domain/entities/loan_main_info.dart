class LoanMainInfo {
  final int totalAmount;
  final int nextPaymentAmount;
  final int amountOfOverdue;
  final int paidOutAmount;
  LoanMainInfo({
    required this.totalAmount,
    required this.nextPaymentAmount,
    required this.amountOfOverdue,
    required this.paidOutAmount,
  });

  @override
  String toString() {
    return 'LoanMainInfo(totalAmount: $totalAmount, nextPaymentAmount: $nextPaymentAmount, amountOfOverdue: $amountOfOverdue, paidOutAmount: $paidOutAmount)';
  }
}
