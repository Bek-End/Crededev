import 'package:credo_p2p/features/auth_local/domain/pincode.dart';
import 'package:credo_p2p/features/auth_local/domain/pincode_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'repeatpincode_bloc.freezed.dart';
part 'repeatpincode_event.dart';
part 'repeatpincode_state.dart';

@injectable
class RepeatpincodeBloc extends Bloc<RepeatpincodeEvent, RepeatpincodeState> {
  PincodeHandler pincodeHandler;
  RepeatpincodeBloc(
    this.pincodeHandler,
  ) : super(RepeatpincodeState.initial()) {
    on<RepeatpincodeEvent>(
      (event, emit) async {
        await event.map(
          onPressed: (e) async {
            emit(state.copyWith(isSubmitting: true));
            if (e.pincode == e.prevPincode) {
              await pincodeHandler.create(pincode: e.pincode);
              emit(state.copyWith(isok: true, isSubmitting: false));
            } else {
              emit(
                state.copyWith(
                  showError: true,
                  isok: false,
                  isSubmitting: false,
                ),
              );
            }
          },
        );
      },
    );
  }
}
