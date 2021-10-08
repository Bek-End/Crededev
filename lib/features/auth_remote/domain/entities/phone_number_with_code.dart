import 'package:credo_p2p/features/auth_remote/domain/entities/phone_number.dart';

class PhoneNumberWithCode extends PhoneNumber {
  final String code;
  const PhoneNumberWithCode({
    required final String number,
    required this.code,
  }) : super(number: number);

  @override
  List<Object?> get props => [number, code];
}
