import 'dart:async';
import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/network/network_info.dart';
import 'package:credo_p2p/core/token_model/token_model.dart';
import 'package:credo_p2p/features/auth_remote/data/datasources/sign_in/auth_remote_refresh_token.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRemoteRefreshToken)
class AuthRemoteRefreshTokenImpl implements AuthRemoteRefreshToken {
  final Dio dio;
  AuthRemoteRefreshTokenImpl({
    required this.dio,
  });
  @override
  Future<TokenModel> refreshToken({required final TokenModel token}) async {
    try {
      const String endPoint = "/auth/refresh";

      //Adding entryPoint as a main url

      dio.options.baseUrl = entryPoint;
      final res = await dio.post(
        endPoint,
        data: {
          "token": token.data.refreshToken.token,
        },
      );
      logger.d(res.data);
      return TokenModel.fromJson(res.data);
    } on DioError catch (e) {
      logger.e(e.response!.statusCode, e.response!.data);
      throw ServerException(
        error: '${e.response!.statusCode}',
        stack: '${e.response!.data}',
      );
    }
  }
}
