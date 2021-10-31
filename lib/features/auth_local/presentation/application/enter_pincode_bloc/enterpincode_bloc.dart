import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/features/auth_local/domain/pincode.dart';
import 'package:credo_p2p/features/auth_local/domain/pincode_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'enterpincode_bloc.freezed.dart';
part 'enterpincode_event.dart';
part 'enterpincode_state.dart';

@injectable
class EnterpincodeBloc extends Bloc<EnterpincodeEvent, EnterpincodeState> {
  PincodeHandler pincodeHandler;
  EnterpincodeBloc(
    this.pincodeHandler,
  ) : super(EnterpincodeState.initial()) {
    on<EnterpincodeEvent>(
      (event, emit) async {
        await event.map(
          onPressed: (e) async {
            emit(state.copyWith(isSubmitting: true));
            final bool isOK = await pincodeHandler.enter(
              pincode: e.pincode,
            );
            logger.i(isOK);
            if (isOK) {
              emit(
                state.copyWith(
                  isOK: true,
                  showError: false,
                  isSubmitting: false,
                ),
              );
            } else {
              emit(
                state.copyWith(
                  showError: true,
                  isOK: false,
                  isSubmitting: false,
                ),
              );
            }
          },
          initial: (e) {
            emit(state.copyWith(checkBioMetric: true));
            state.copyWith(checkBioMetric: false);
          },
        );
      },
    );
  }
}
