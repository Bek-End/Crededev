import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/features/profile/faq/domain/entities/faq.dart';
import 'package:dartz/dartz.dart';

abstract class FaqRepo {
  ///Returns a list of [Faq] objects
  ///
  ///Returns either [NoInternetFailure] or [ServerFailure] on any exceptions
  Future<Either<Failure, List<Faq>>> getFaqs();
}
