import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/auth_enum.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/phone_number.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/phone_number_with_code.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRemoteRepo {
  ///Returns Failure if smth wrong happened
  ///
  ///Returns [Auth.signIn] or [Auth.signUp] depending on how the user was signed
  Future<Either<Failure, Either<None, Auth>>> enterWithPhoneNumber({
    required final PhoneNumber phoneNumber,
  });
  Future<Either<Failure, None>> enterWithPhoneNumberAndCode({
    required final PhoneNumberWithCode phoneNumberWithCode,
    required final Auth auth,
  });
}
