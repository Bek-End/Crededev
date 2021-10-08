import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/features/auth_remote/data/models/phone_number_with_code_model.dart';

abstract class AuthRemoteSignIn {
  ///Calls the https://api.credo.dev.galament.net/auth/login
  ///
  ///Throws [ServerException] for all error codes
  Future<void> signIn({required final PhoneNumberWithCodeModel numberModel});
}
