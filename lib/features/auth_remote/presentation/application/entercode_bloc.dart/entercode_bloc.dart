import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/features/auth_local/domain/pincode_handler.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/auth_enum.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/phone_number.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/phone_number_with_code.dart';
import 'package:credo_p2p/features/auth_remote/domain/usecases/enter_with_phone_number.dart';
import 'package:credo_p2p/features/auth_remote/domain/usecases/enter_with_phone_number_and_code.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'entercode_bloc.freezed.dart';
part 'entercode_event.dart';
part 'entercode_state.dart';

@injectable
class EntercodeBloc extends Bloc<EntercodeEvent, EntercodeState> {
  final EnterWithPhoneNumberAndCode enterWithPhoneNumberAndCode;
  final EnterWithPhoneNumber enterWithPhoneNumber;
  late Auth auth;
  late final String number;
  final PincodeHandler pincodeHandler;
  EntercodeBloc(
    this.enterWithPhoneNumberAndCode,
    this.enterWithPhoneNumber,
    this.pincodeHandler,
  ) : super(EntercodeState.initial()) {
    on<EntercodeEvent>(
      (event, emit) async {
        await event.map(
          initial: (e) async {
            auth = e.auth;
            number = e.number;
            logger.i(auth);
          },
          onPressed: (e) async {
            emit(state.copyWith(isSumitting: true));
            final phoneCode = PhoneNumberWithCode(number: number, code: e.code);
            final res = await enterWithPhoneNumberAndCode(
              phoneNumberWithCode: phoneCode,
              auth: auth,
            );
            await res.fold(
              (l) {
                if (l is NoInternetFailure) {
                  emit(
                    state.copyWith(
                      isSumitting: false,
                      internetConnected: false,
                      wrongCode: false,
                    ),
                  );
                } else if (l is InvalidOneTimeCodeFailure) {
                  emit(
                    state.copyWith(
                      isSumitting: false,
                      data: res,
                      wrongCode: true,
                    ),
                  );
                }
              },
              (r) async {
                final hasPin = await pincodeHandler.hasPin();
                emit(
                  state.copyWith(
                    isSumitting: false,
                    data: res,
                    done: true,
                    wrongCode: false,
                    screens: hasPin ? Screens.mainPage : Screens.createPinCode,
                  ),
                );
              },
            );
          },
          retry: (e) async {
            final phoneNumber = PhoneNumber(number: number);
            final res = await enterWithPhoneNumber(
              phoneNumber: phoneNumber,
            );
            logger.i(res);
            res.fold(
              (l) {
                if (l is NoInternetFailure) {
                  emit(
                    state.copyWith(
                      internetConnected: false,
                    ),
                  );
                } else {
                  emit(
                    state.copyWith(
                      internetConnected: true,
                      data: left(l),
                    ),
                  );
                }
              },
              (r) {
                r.fold(
                  (l) => null,
                  (r) {
                    auth = r;
                  },
                );
                emit(
                  state.copyWith(
                    data: right(const None()),
                    internetConnected: true,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
