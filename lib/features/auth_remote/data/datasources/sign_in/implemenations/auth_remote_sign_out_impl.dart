import 'dart:async';
import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/network/network_info.dart';
import 'package:credo_p2p/core/token_model/token_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../auth_remote_sign_out.dart';

@LazySingleton(as: AuthRemoteSignOut)
class AuthRemoteSignOutImpl implements AuthRemoteSignOut {
  final Dio dio;
  AuthRemoteSignOutImpl({
    required this.dio,
  });
  @override
  Future<void> signOut({required final TokenModel token}) async {
    try {
      const String endPoint = "/auth/logout";

      //Adding entryPoint as a main url

      dio.options.baseUrl = entryPoint;
      final res = await dio.post(
        endPoint,
        data: {
          "token": token.data.refreshToken.token,
        },
      );
      logger.d(res.data);
    } on DioError catch (e) {
      logger.e(e.response!.statusCode, e.response!.data);
      throw ServerException(
        error: '${e.response!.statusCode}',
        stack: '${e.response!.data}',
      );
    }
  }
}
