enum Rating {
  one,
  two,
  three,
  four,
  five,
  none,
}

enum LoanDuration {
  untilOneMonth,
  fromOneToThreeMonth,
  fromThreeToSixMonth,
  moreThanSixMonth,
  none,
}

class FilterModel {
  Rating? rating;
  int? fromSum;
  int? toSum;
  int? fromPercent;
  int? toPercent;
  LoanDuration? loanDuration;
  FilterModel({
    this.rating,
    this.fromSum,
    this.toSum,
    this.fromPercent,
    this.toPercent,
    this.loanDuration,
  });
}
