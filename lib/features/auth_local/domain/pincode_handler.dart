import 'package:credo_p2p/features/auth_local/domain/pincode.dart';

abstract class PincodeHandler {
  Future<bool> hasPin();
  Future<void> create({required final Pincode pincode});
  Future<bool> enter({required final Pincode pincode});
  Future<bool> enterOldPin({required final Pincode pincode});
  Future<void> changePin({required final Pincode pincode});
}
