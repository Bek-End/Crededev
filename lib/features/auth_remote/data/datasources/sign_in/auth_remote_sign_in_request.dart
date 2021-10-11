import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/features/auth_remote/data/models/phone_number_model.dart';

abstract class AuthRemoteSignInRequest {
  ///Calls the https://api.credo.dev.galament.net/auth/request
  ///
  ///Throws [UserNotFoundException], if the phone number hasn't been registered yet
  ///
  ///Throws [ServerException] for all other error codes
  Future<void> signInRequest({required final PhoneNumberModel numberModel});
}
