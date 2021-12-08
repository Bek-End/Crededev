import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/features/profile/faq/domain/entities/faq.dart';
import 'package:credo_p2p/features/profile/faq/domain/repository/faq_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'faq_bloc.freezed.dart';
part 'faq_event.dart';
part 'faq_state.dart';

@injectable
class FaqBloc extends Bloc<FaqEvent, FaqState> {
  FaqRepo faqRepo;
  FaqBloc(
    this.faqRepo,
  ) : super(FaqState.initial()) {
    on<FaqEvent>(
      (event, emit) async {
        await event.map(
          initial: (e) async {
            emit(
              state.copyWith(isSubmitting: true),
            );
            final res = await faqRepo.getFaqs();
            res.fold(
              (l) {
                if (l is NoInternetFailure) {
                  emit(
                    state.copyWith(
                      noInternet: true,
                      isSubmitting: false,
                    ),
                  );
                }
                if (l is ServerFailure) {
                  logger.e(l.toString());
                  emit(
                    state.copyWith(serverError: true),
                  );
                }
              },
              (r) async {
                emit(
                  state.copyWith(faqs: r),
                );
              },
            );
          },
        );
      },
    );
  }
}
