import 'package:equatable/equatable.dart';

class Pincode extends Equatable {
  final int pin;
  const Pincode({
    required this.pin,
  }) : assert(pin < 10000);

  @override
  // TODO: implement props
  List<Object?> get props => [pin];
}
