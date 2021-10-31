part of 'pin_bloc.dart';

abstract class PinState extends Equatable {
  const PinState();

  @override
  List<Object> get props => [];
}

class PinInitial extends PinState {}

class PinDataState extends PinState {
  final bool hasPin;
  final bool hasToken;
  const PinDataState({
    required this.hasPin,
    required this.hasToken,
  });
}

class PinLoading extends PinState {
  final bool isLoading;
  const PinLoading({
    required this.isLoading,
  });
}
