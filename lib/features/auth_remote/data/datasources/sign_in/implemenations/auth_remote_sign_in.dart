import 'dart:async';
import 'dart:io';
import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/network/network_info.dart';
import 'package:credo_p2p/core/token_model/token_model.dart';
import 'package:credo_p2p/features/auth_remote/data/models/phone_number_with_code_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../auth_remote_sign_in.dart';

@LazySingleton(as: AuthRemoteSignIn)
class AuthRemoteSignInImpl implements AuthRemoteSignIn {
  final Dio dio;
  AuthRemoteSignInImpl({
    required this.dio,
  });
  @override
  Future<TokenModel> signIn({
    required final PhoneNumberWithCodeModel numberModel,
  }) async {
    try {
      const String endPoint = "/auth/login";

      //Adding entryPoint as a main url

      dio.options.baseUrl = entryPoint;
      final res = await dio.post(
        endPoint,
        data: numberModel.toJson(),
      );
      logger.d(res.data);
      return TokenModel.fromJson(res.data);
    } on DioError catch (e) {
      logger.e(e.response!.statusCode, e.response!.data);
      if (e.response!.statusCode == HttpStatus.badRequest) {
        throw InvalidOneTimeCodeException();
      } else {
        throw ServerException(
          error: '${e.response!.statusCode}',
          stack: '${e.response!.data}',
        );
      }
    }
  }
}
