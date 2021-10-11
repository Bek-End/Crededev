import 'dart:async';
import 'dart:io';
import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/network/network_info.dart';
import 'package:credo_p2p/core/token_model/token_model.dart';
import 'package:credo_p2p/features/auth_remote/data/datasources/sign_up/auth_remote_confirm_sign_up.dart';
import 'package:credo_p2p/features/auth_remote/data/models/phone_number_with_code_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRemoteConfirmSignUp)
class AuthRemoteSignUpImpl implements AuthRemoteConfirmSignUp {
  final Dio dio;
  AuthRemoteSignUpImpl({
    required this.dio,
  });
  @override
  Future<TokenModel> confirmSignUp({
    required final PhoneNumberWithCodeModel numberModel,
  }) async {
    try {
      const String endPoint = "/signup/confirm";

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
