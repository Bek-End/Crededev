import 'package:credo_p2p/features/auth_remote/domain/entities/phone_number.dart';

class PhoneNumberModel extends PhoneNumber {
  const PhoneNumberModel({
    required final String number,
  }) : super(number: number);

  factory PhoneNumberModel.fromJson(dynamic data) => PhoneNumberModel(
        number: data['phone'] as String,
      );

  Map<String, dynamic> toJson() => {
        "phone": number,
      };
}
