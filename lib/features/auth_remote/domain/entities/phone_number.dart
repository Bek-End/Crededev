import 'package:equatable/equatable.dart';

class PhoneNumber extends Equatable {
  final String number;
  const PhoneNumber({
    required this.number,
  });

  @override
  List<Object?> get props => [number];
}
