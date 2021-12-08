import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/core/network/network_info.dart';
import 'package:credo_p2p/features/profile/faq/data/datasources/local/faq_local_repo.dart';
import 'package:credo_p2p/features/profile/faq/data/datasources/remote/faq_remote_repo.dart';
import 'package:credo_p2p/features/profile/faq/domain/entities/faq.dart';
import 'package:credo_p2p/features/profile/faq/domain/repository/faq_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FaqRepo)
class FaqRepoImpl implements FaqRepo {
  final FaqLocalRepo localRepo;
  final FaqRemoteRepo remoteRepo;
  final NetworkInfo networkInfo;
  FaqRepoImpl({
    required this.localRepo,
    required this.remoteRepo,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, List<Faq>>> getFaqs() async {
    //checks if there is local data
    final bool hasData = await localRepo.hasData();
    //if yes then returns the data
    if (hasData) {
      return right(await localRepo.getFaqs());
    } else {
      //if no checks internet connection
      final bool hasConnection = await networkInfo.isConnected();
      if (hasConnection) {
        //if yes connection then sends get request
        try {
          final faqs = await remoteRepo.getFaqs();
          //if ok then saves response locally and returns data
          await localRepo.saveFaqs(faqs: faqs);
          return right(faqs);
        } on ServerException catch (e) {
          //if any exceptions returns serverfailure
          return left(
            ServerFailure(
              error: e.error,
              stack: e.stack,
            ),
          );
        }
      } else {
        //if no connection returns internet failure
        return left(const NoInternetFailure());
      }
    }
  }
}
