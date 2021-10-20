import 'package:credo_p2p/features/auth_local/domain/pincode_handler.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'pin_event.dart';
part 'pin_state.dart';

@lazySingleton
class PinBloc extends Bloc<PinEvent, PinState> {
  final PincodeHandler pincodeHandler;

  PinBloc(
    this.pincodeHandler,
  ) : super(PinInitial()) {
    on<PinEvent>(
      (event, emit) async {
        if (event is PinInitialEvent) {
          emit(const PinLoading(isLoading: true));
          final res = await pincodeHandler.hasPin();
          emit(PinDataState(hasPin: res));
        }
      },
    );
  }
}
