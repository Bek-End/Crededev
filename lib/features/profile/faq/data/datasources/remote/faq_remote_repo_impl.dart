import 'dart:io';
import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/features/profile/faq/data/datasources/remote/faq_remote_repo.dart';
import 'package:credo_p2p/features/profile/faq/data/models/faq_model.dart';
import 'package:credo_p2p/features/profile/faq/domain/entities/faq.dart';
import 'package:credo_p2p/features/token/token_handler.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FaqRemoteRepo)
class FaqRemoteRepoImpl implements FaqRemoteRepo {
  final Dio dio;
  final TokenHandler tokenHandler;
  FaqRemoteRepoImpl({
    required this.dio,
    required this.tokenHandler,
  });
  @override
  Future<List<Faq>> getFaqs() async {
    final access = await tokenHandler.getToken();
    final headers = {'Authorization': 'Bearer ${access.data.accessToken}'};
    dio.options.headers = headers;
    try {
      final res = await dio.get(
        'https://api.credo.dev.galament.net/faq',
      );
      final faq = FaqData.fromJson(res.data);
      return faq.faqs;
    } on DioError catch (e) {
      if (e.response!.statusCode == HttpStatus.unauthorized) {
        final newToken = await tokenHandler.refreshToken();
        await tokenHandler.saveToken(token: newToken!);
        return getFaqs();
      } else {
        throw ServerException(
          error: e.error.toString(),
          stack: e.response!.data.toString(),
        );
      }
    }
  }
}
