import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/phone_number.dart';
import 'package:credo_p2p/features/auth_remote/domain/repositories/auth_remote_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class EnterWithPhoneNumber {
  final AuthRemoteRepo repo;
  EnterWithPhoneNumber({
    required this.repo,
  });
  Future<Either<Failure, None>> call({
    required final PhoneNumber phoneNumber,
  }) async {
    return repo.enterWithPhoneNumber(phoneNumber: phoneNumber);
  }
}
