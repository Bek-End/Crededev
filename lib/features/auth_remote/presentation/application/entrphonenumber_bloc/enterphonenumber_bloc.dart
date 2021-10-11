import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/auth_enum.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/phone_number.dart';
import 'package:credo_p2p/features/auth_remote/domain/usecases/enter_with_phone_number.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'enterphonenumber_event.dart';
part 'enterphonenumber_state.dart';
part 'enterphonenumber_bloc.freezed.dart';

@injectable
class EnterphonenumberBloc
    extends Bloc<EnterphonenumberEvent, EnterphonenumberState> {
  final EnterWithPhoneNumber enterWithPhoneNumber;
  EnterphonenumberBloc({
    required final this.enterWithPhoneNumber,
  }) : super(EnterphonenumberState.initial()) {
    on<EnterphonenumberEvent>(
      (event, emit) async {
        await event.map(
          onPressed: (e) async {
            emit(state.copyWith(isSubmitting: true));
            final phoneNumber = PhoneNumber(number: e.phoneNumber);
            final res = await enterWithPhoneNumber(
              phoneNumber: phoneNumber,
            );
            logger.i(res);
            res.fold(
              (l) {
                if (l is NoInternetFailure) {
                  emit(
                    state.copyWith(
                      noInternet: true,
                      isSubmitting: false,
                    ),
                  );
                } else {
                  emit(
                    state.copyWith(
                      noInternet: false,
                      data: res,
                      isSubmitting: false,
                    ),
                  );
                }
              },
              (r) => emit(
                state.copyWith(
                  data: res,
                  noInternet: false,
                  isSubmitting: false,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
