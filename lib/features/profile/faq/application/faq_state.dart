part of 'faq_bloc.dart';

@freezed
class FaqState with _$FaqState {
  const factory FaqState({
    required final bool isSubmitting,
    required final bool noInternet,
    required final bool serverError,
    required final List<Faq> faqs,
  }) = _FaqState;
  factory FaqState.initial() => const FaqState(
        isSubmitting: false,
        faqs: [],
        serverError: false,
        noInternet: false,
      );
}
