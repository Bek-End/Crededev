import 'package:credo_p2p/core/errors/exceptions.dart';

abstract class AuthRemoteRefreshToken {
  ///Calls the https://api.credo.dev.galament.net/auth/refresh
  ///
  ///Throws [ServerException] for all error codes
  Future<void> refreshToken({required final String token});
}
