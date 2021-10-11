import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/token_model/token_model.dart';
import 'package:credo_p2p/features/auth_remote/data/models/phone_number_with_code_model.dart';

abstract class AuthRemoteConfirmSignUp {
  ///Calls the https://api.credo.dev.galament.net/signup/confirm
  ///
  ///Throws [InvalidOneTimeCodeException] if the code is incorrect
  ///
  ///Throws [ServerException] for all other error codes
  Future<TokenModel> confirmSignUp({
    required final PhoneNumberWithCodeModel numberModel,
  });
}
