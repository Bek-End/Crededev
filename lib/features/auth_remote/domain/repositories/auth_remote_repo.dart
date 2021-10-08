import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/phone_number.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRemoteRepo {
  Future<Either<Failure, None>> enterWithPhoneNumber({
    required final PhoneNumber phoneNumber,
  });
}
