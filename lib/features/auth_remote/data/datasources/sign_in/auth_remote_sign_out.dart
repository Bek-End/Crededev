import 'package:credo_p2p/core/errors/exceptions.dart';

abstract class AuthRemoteSignOut {
  ///Calls the https://api.credo.dev.galament.net/auth/logout
  ///
  ///Throws [ServerException] for all error codes
  Future<void> signOut({required final String toke});
}
