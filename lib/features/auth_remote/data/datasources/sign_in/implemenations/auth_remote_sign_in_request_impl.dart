import 'dart:async';
import 'dart:io';
import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/network/network_info.dart';
import 'package:credo_p2p/features/auth_remote/data/datasources/sign_in/auth_remote_sign_in_request.dart';
import 'package:credo_p2p/features/auth_remote/data/models/phone_number_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retry/retry.dart';

@LazySingleton(as: AuthRemoteSignInRequest)
class AuthRemoteSignInRequestImpl implements AuthRemoteSignInRequest {
  final Dio dio;
  AuthRemoteSignInRequestImpl({
    required this.dio,
  });
  @override
  Future<void> signInRequest({
    required final PhoneNumberModel numberModel,
  }) async {
    try {
      const String endPoint = "/auth/request";

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
