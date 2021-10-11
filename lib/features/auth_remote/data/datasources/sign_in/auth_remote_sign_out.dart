import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/token_model/token_model.dart';

abstract class AuthRemoteSignOut {
  ///Calls the https://api.credo.dev.galament.net/auth/logout
  ///
  ///Throws [ServerException] for all error codes
  Future<void> signOut({required final TokenModel token});
}
