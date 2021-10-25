import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

@lazySingleton
class LocalAuthenticationService {
  final LocalAuthentication auth;

  LocalAuthenticationService({
    required this.auth,
  });

  Future<bool> hasBiometrics() async {
    try {
      return await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      logger.e(e.details);
      return false;
    }
  }

  Future<bool> authenticate() async {
    if (await hasBiometrics()) {
      try {
        return await auth.authenticate(
          localizedReason: 'Authenticate to access',
          biometricOnly: true,
          stickyAuth: true,
        );
      } on PlatformException catch (e) {
        logger.e(e);
        return false;
      }
    }
    return false;
  }
}
