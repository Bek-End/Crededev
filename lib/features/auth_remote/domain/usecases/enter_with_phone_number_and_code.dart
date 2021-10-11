import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/auth_enum.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/phone_number_with_code.dart';
import 'package:credo_p2p/features/auth_remote/domain/repositories/auth_remote_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class EnterWithPhoneNumberAndCode {
  final AuthRemoteRepo repo;
  EnterWithPhoneNumberAndCode({
    required this.repo,
  });
  Future<Either<Failure, None>> call({
    required final PhoneNumberWithCode phoneNumberWithCode,
    required final Auth auth,
  }) async {
    return repo.enterWithPhoneNumberAndCode(
      phoneNumberWithCode: phoneNumberWithCode,
      auth: auth,
    );
  }
}
