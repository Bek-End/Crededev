import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/features/token/token_handler.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

const String tokenSecureStorage = "tokenSecureStorage";

@LazySingleton(as: TokenHandler)
class TokenHandlerImpl implements TokenHandler {
  final FlutterSecureStorage secureStorage;
  TokenHandlerImpl({
    required this.secureStorage,
  });

  ///Throws [CacheException] if there is no saved token
  @override
  Future<String> getToken() async {
    final res = await secureStorage.read(key: tokenSecureStorage);
    if (res != null) {
      return res;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> saveToken({required final String token}) async {
    await secureStorage.write(key: tokenSecureStorage, value: token);
  }
}
