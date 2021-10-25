import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  Dio get dio => Dio();
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();
  @lazySingleton
  LocalAuthentication get localAuth => LocalAuthentication();
}
