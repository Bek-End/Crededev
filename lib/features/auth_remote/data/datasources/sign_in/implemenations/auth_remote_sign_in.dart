import 'dart:async';
import 'dart:io';
import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/network/network_info.dart';
import 'package:credo_p2p/features/auth_remote/data/models/phone_number_with_code_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retry/retry.dart';
import '../auth_remote_sign_in.dart';

@LazySingleton(as: AuthRemoteSignIn)
class AuthRemoteSignInImpl implements AuthRemoteSignIn {
  final Dio dio;
  AuthRemoteSignInImpl({
    required this.dio,
  });
  @override
  Future<void> signIn({
    required final PhoneNumberWithCodeModel numberModel,
  }) async {
    try {
      const String endPoint = "/auth/login";

      //Adding entryPoint as a main url

      try {
        dio.options.baseUrl = entryPoint;
        await retry<void>(
          () async {
            final res = await dio.post(
              endPoint,
              data: numberModel.toJson(),
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
