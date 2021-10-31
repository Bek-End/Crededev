import 'package:credo_p2p/core/token_model/token_model.dart';

abstract class TokenHandler {
  Future<void> saveToken({required final TokenModel token});
  Future<TokenModel> getToken();
  Future<bool> hasToken();
}
