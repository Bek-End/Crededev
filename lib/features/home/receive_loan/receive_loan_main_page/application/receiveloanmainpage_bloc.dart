import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/features/home/core/data/repository/loan_repo_impl.dart';
import 'package:credo_p2p/features/home/core/domain/entities/loan_main_info.dart';
import 'package:credo_p2p/features/home/core/domain/repository/loan_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'receiveloanmainpage_event.dart';
part 'receiveloanmainpage_state.dart';
part 'receiveloanmainpage_bloc.freezed.dart';

@injectable
class ReceiveloanmainpageBloc
    extends Bloc<ReceiveloanmainpageEvent, ReceiveloanmainpageState> {
  final LoanRepo<LoanMainInfo> loanRepo;
  ReceiveloanmainpageBloc(this.loanRepo)
      : super(
          ReceiveloanmainpageState.initial(),
        ) {
    on<ReceiveloanmainpageEvent>(
      (event, emit) async {
        await event.map(
          initial: (e) async {
            emit(state.copyWith(isSubmitting: true));
            final res = await loanRepo.getMainInfo(loanType: LoanType.loan);
            res.fold(
              (l) {
                if (l is NoInternetFailure) {
                  emit(
                    state.copyWith(
                      isSubmitting: false,
                      noInternet: true,
                    ),
                  );
                }
                if (l is ServerFailure) {
                  emit(
                    state.copyWith(
                      hasServerError: true,
                      isSubmitting: false,
                    ),
                  );
                }
              },
              (r) {
                emit(
                  state.copyWith(
                    loanMainInfo: r,
                    isSubmitting: false,
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
