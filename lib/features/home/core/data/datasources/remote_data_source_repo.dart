import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:dio/dio.dart';

abstract class RemoteDataSourceRepo {
  ///Makes a GET request to https://api.credo.dev.galament.net/main/info with a Bearer Token
  ///
  ///Returns [Response] object
  ///
  ///Throws [ServerException] on any server errors
  Future<Response> getMainInfo();
}
