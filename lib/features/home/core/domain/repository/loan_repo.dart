import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/features/home/core/data/models/give_loan_main_info_model.dart';
import 'package:credo_p2p/features/home/core/data/models/receive_loan_main_info_model.dart';
import 'package:credo_p2p/features/home/core/data/repository/loan_repo_impl.dart';
import 'package:dartz/dartz.dart';

abstract class LoanRepo<T> {
  ///Receives [LoanType] as a parameter, depending on what returns either [ReceiveLoanMainInfoModel] or [GiveLoanMainInfoModel]
  ///
  ///Returns [Failure] on any server errors
  Future<Either<Failure, T>> getMainInfo({
    required final LoanType loanType,
  });
}
