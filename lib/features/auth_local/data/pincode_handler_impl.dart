import 'package:credo_p2p/features/auth_local/domain/pincode.dart';
import 'package:credo_p2p/features/auth_local/domain/pincode_handler.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

const pinCode = "pinCode";

@LazySingleton(as: PincodeHandler)
class PincodeHandlerImpl extends PincodeHandler {
  final FlutterSecureStorage secureStorage;

  PincodeHandlerImpl({
    required this.secureStorage,
  });

  @override
  Future<void> changePin({required Pincode pincode}) {
    return create(pincode: pincode);
  }

  @override
  Future<bool> enter({required Pincode pincode}) async {
    final res = await secureStorage.read(key: pinCode);
    final resPin = Pincode(pin: int.parse(res!));
    return resPin == pincode;
  }

  @override
  Future<void> create({required Pincode pincode}) async {
    await secureStorage.delete(key: pinCode);
    await secureStorage.write(key: pinCode, value: pincode.pin.toString());
  }

  @override
  Future<bool> hasPin() async {
    final String? res = await secureStorage.read(key: pinCode);
    return res != null;
  }

  @override
  Future<bool> enterOldPin({required Pincode pincode}) {
    return enter(pincode: pincode);
  }
}
