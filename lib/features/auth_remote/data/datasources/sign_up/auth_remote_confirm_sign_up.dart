import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/features/auth_remote/data/models/phone_number_with_code_model.dart';

abstract class AuthRemoteSignUp {
  ///Calls the https://api.credo.dev.galament.net/signup/confirm
  ///
  ///Throws [ServerException] for all error codes
  Future<void> confirmSignUp({PhoneNumberWithCodeModel numberModel});
}
