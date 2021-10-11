import 'dart:async';
import 'dart:io';
import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/network/network_info.dart';
import 'package:credo_p2p/features/auth_remote/data/datasources/sign_in/auth_remote_sign_in_request.dart';
import 'package:credo_p2p/features/auth_remote/data/models/phone_number_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

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

      dio.options.baseUrl = entryPoint;
      final res = await dio.post(
        endPoint,
        data: numberModel.toJson(),
      );
      logger.d(res.data);
    } on DioError catch (e) {
      logger.e(e);
      try {
        if (e.response!.statusCode == HttpStatus.notFound) {
          logger.i("USER NOT FOUND");
          throw UserNotFoundException();
        }
      } catch (a) {
        throw ServerException(
          error: 'WTF',
          stack: '$a',
        );
      }
    }
  }
}
