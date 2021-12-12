import 'dart:io';
import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/features/home/core/data/datasources/remote_data_source_repo.dart';
import 'package:credo_p2p/features/token/token_handler.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

const mainInfoUrl = "https://api.credo.dev.galament.net/main/info";

@LazySingleton(as: RemoteDataSourceRepo)
class RemoteDataSourceRepoImpl implements RemoteDataSourceRepo {
  final Dio dio;
  final TokenHandler tokenHandler;
  RemoteDataSourceRepoImpl({
    required this.dio,
    required this.tokenHandler,
  });
  @override
  Future<Response> getMainInfo() async {
    final access = await tokenHandler.getToken();
    final headers = {'Authorization': 'Bearer ${access.data.accessToken}'};
    dio.options.headers = headers;
    try {
      final res = await dio.get(mainInfoUrl);
      return res;
    } on DioError catch (e) {
      if (e.response!.statusCode == HttpStatus.unauthorized) {
        final newToken = await tokenHandler.refreshToken();
        await tokenHandler.saveToken(token: newToken!);
        return getMainInfo();
      } else {
        logger.e(e.response!.data);
        throw ServerException(
          error: e.error.toString(),
          stack: e.response!.data.toString(),
        );
      }
    }
  }
}
