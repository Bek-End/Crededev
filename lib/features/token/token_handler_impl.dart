import 'dart:convert';
import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/token_model/token_model.dart';
import 'package:credo_p2p/features/token/token_handler.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

const String tokenSecureStorage = "tokenSecureStorage";

@LazySingleton(as: TokenHandler)
class TokenHandlerImpl implements TokenHandler {
  final FlutterSecureStorage secureStorage;
  final Dio dio;
  TokenHandlerImpl({
    required this.secureStorage,
    required this.dio,
  });

  ///Throws [CacheException] if there is no saved token
  @override
  Future<TokenModel> getToken() async {
    final res = await secureStorage.read(key: tokenSecureStorage);
    if (res != null) {
      final json = jsonDecode(res);
      return TokenModel.fromJson(json);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> saveToken({required final TokenModel token}) async {
    final data = token.toJson();
    await secureStorage.write(
      key: tokenSecureStorage,
      value: jsonEncode(data),
    );
  }

  @override
  Future<bool> hasToken() async {
    final res = await secureStorage.read(key: tokenSecureStorage);
    return res != null;
  }

  @override
  Future<TokenModel?> refreshToken() async {
    final token = await secureStorage.read(key: tokenSecureStorage);
    if (token != null) {
      final json = jsonDecode(token);
      final tokenModel = TokenModel.fromJson(json);
      final body = {
        "token": tokenModel.data.refreshToken.token,
      };
      try {
        final response = await dio.post(
          'https://api.credo.dev.galament.net/auth/refresh',
          data: body,
        );
        return TokenModel.fromJson(response.data);
      } on DioError catch (e) {
        logger.e(e);
      }
    }
  }

  @override
  Future<void> deleteToken() async {
    await secureStorage.delete(key: tokenSecureStorage);
  }
}
