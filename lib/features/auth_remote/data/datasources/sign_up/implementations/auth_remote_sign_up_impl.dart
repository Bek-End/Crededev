import 'dart:async';
import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/network/network_info.dart';
import 'package:credo_p2p/features/auth_remote/data/models/phone_number_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../auth_remote_sign_up.dart';

@LazySingleton(as: AuthRemoteSignUp)
class AuthRemoteSignUpImpl implements AuthRemoteSignUp {
  final Dio dio;
  AuthRemoteSignUpImpl({
    required this.dio,
  });
  @override
  Future<void> signUp({
    required final PhoneNumberModel numberModel,
  }) async {
    try {
      const String endPoint = "/signup";

      //Adding entryPoint as a main url

      dio.options.baseUrl = entryPoint;
      final res = await dio.post(
        endPoint,
        data: numberModel.toJson(),
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
