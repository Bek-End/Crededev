import 'package:credo_p2p/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'enterphonenumber_event.dart';
part 'enterphonenumber_state.dart';
part 'enterphonenumber_bloc.freezed.dart';

class EnterphonenumberBloc
    extends Bloc<EnterphonenumberEvent, EnterphonenumberState> {
  EnterphonenumberBloc() : super(EnterphonenumberState.initial()) {
    on<EnterphonenumberEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
