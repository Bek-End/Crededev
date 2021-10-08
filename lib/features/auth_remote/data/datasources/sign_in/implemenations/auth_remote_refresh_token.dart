import 'dart:async';
import 'dart:io';

import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/network/network_info.dart';
import 'package:credo_p2p/features/auth_remote/data/datasources/sign_in/auth_remote_refresh_token.dart';
import 'package:credo_p2p/features/token/token_handler.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retry/retry.dart';

@LazySingleton(as: AuthRemoteRefreshToken)
class AuthRemoteRefreshTokenImpl implements AuthRemoteRefreshToken {
  final TokenHandler tokenHandler;
  final Dio dio;
  AuthRemoteRefreshTokenImpl({
    required this.tokenHandler,
    required this.dio,
  });
  @override
  Future<void> refreshToken({required String token}) async {
    try {
      const String endPoint = "/auth/refresh";

      //Adding entryPoint as a main url

      try {
        dio.options.baseUrl = entryPoint;
        await retry<void>(
          () async {
            final res = await dio.post(
              endPoint,
              data: {"token": token},
            );
            if (res.statusCode! >= 500) {
              logger.e(res.data, res.statusCode);
              throw ServerException(
                error: '${res.statusCode}',
                stack: '${res.data}',
              );
            }
          },
          retryIf: (e) {
            logger.d(e);
            return e is SocketException || e is TimeoutException;
          },
        ).timeout(
          const Duration(seconds: 3),
        );
      } on ServerException {
        rethrow;
      }
    } on DioError catch (e) {
      throw ServerException(
        error: '${e.response!.statusCode}',
        stack: '${e.response!.data}',
      );
    }
  }
}
