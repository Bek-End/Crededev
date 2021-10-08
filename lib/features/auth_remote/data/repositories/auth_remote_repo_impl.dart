import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/phone_number.dart';
import 'package:credo_p2p/features/auth_remote/domain/repositories/auth_remote_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRemoteRepo)
class AuthRemoteRepoImpl extends AuthRemoteRepo {
  @override
  Future<Either<Failure, None>> enterWithPhoneNumber({
    required PhoneNumber phoneNumber,
  }) {
    // TODO: implement enterWithPhoneNumber
    throw UnimplementedError();
  }
}
