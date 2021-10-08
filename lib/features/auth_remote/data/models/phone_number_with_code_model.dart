import 'package:credo_p2p/features/auth_remote/domain/entities/phone_number_with_code.dart';

class PhoneNumberWithCodeModel extends PhoneNumberWithCode {
  const PhoneNumberWithCodeModel({
    required final String number,
    required final String code,
  }) : super(number: number, code: code);

  Map<String, dynamic> toJson() => {
        "phone": number,
        "code": code,
      };

  factory PhoneNumberWithCodeModel.fromJson({required final data}) =>
      PhoneNumberWithCodeModel(
        number: data["phone"] as String,
        code: data["code"] as String,
      );
}
