import 'package:credo_p2p/features/auth_local/domain/pincode.dart';
import 'package:credo_p2p/features/auth_local/domain/pincode_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'createpincode_bloc.freezed.dart';
part 'createpincode_event.dart';
part 'createpincode_state.dart';

@injectable
class CreatepincodeBloc extends Bloc<CreatepincodeEvent, CreatepincodeState> {
  PincodeHandler pincodeHandler;
  CreatepincodeBloc(
    this.pincodeHandler,
  ) : super(CreatepincodeState.initial()) {
    on<CreatepincodeEvent>(
      (event, emit) async {
        await event.map(
          onPressed: (e) async {
            emit(
              state.copyWith(
                isOk: true,
                pincode: e.pincode,
              ),
            );
          },
        );
      },
    );
  }
}
