import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/token_model/token_model.dart';

abstract class AuthRemoteRefreshToken {
  ///Calls the https://api.credo.dev.galament.net/auth/refresh
  ///
  ///Throws [ServerException] for all error codes
  Future<TokenModel> refreshToken({required final TokenModel token});
}
