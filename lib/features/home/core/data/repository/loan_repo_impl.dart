import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/core/network/network_info.dart';
import 'package:credo_p2p/features/home/core/data/datasources/remote_data_source_repo.dart';
import 'package:credo_p2p/features/home/core/data/models/give_loan_main_info_model.dart';
import 'package:credo_p2p/features/home/core/data/models/receive_loan_main_info_model.dart';
import 'package:credo_p2p/features/home/core/domain/entities/loan_main_info.dart';
import 'package:credo_p2p/features/home/core/domain/repository/loan_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

enum LoanType {
  loan,
  investment,
}

@LazySingleton(as: LoanRepo)
class LoanRepoImpl extends LoanRepo<LoanMainInfo> {
  final RemoteDataSourceRepo dataSourceRepo;
  final NetworkInfo networkInfo;
  LoanRepoImpl({
    required this.dataSourceRepo,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, LoanMainInfo>> getMainInfo({
    required final LoanType loanType,
  }) async {
    final hasConnection = await networkInfo.isConnected();
    if (hasConnection) {
      try {
        final res = await dataSourceRepo.getMainInfo();
        if (loanType == LoanType.investment) {
          return right(GiveLoanMainInfoModel.fromJson(res.data['data']));
        } else {
          return right(ReceiveLoanMainInfoModel.fromJson(res.data['data']));
        }
      } on ServerException catch (e) {
        return left(ServerFailure(error: e.error, stack: e.stack));
      }
    } else {
      return left(const NoInternetFailure());
    }
  }
}
