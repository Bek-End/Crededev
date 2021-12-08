import 'package:credo_p2p/features/profile/faq/domain/entities/faq.dart';

class FaqModel extends Faq {
  FaqModel({
    required final int id,
    required final String question,
    required final String answer,
  }) : super(
          id: id,
          question: question,
          answer: answer,
        );

  factory FaqModel.fromJson(dynamic json) => FaqModel(
        id: json["id"] as int,
        question: json["question"] as String,
        answer: json["answer"] as String,
      );

  Map<String, Object> toJson() {
    return {
      "id": id,
      "question": question,
      "answer": answer,
    };
  }
}

class FaqData {
  final List<FaqModel> faqs;
  FaqData({
    required this.faqs,
  });

  factory FaqData.fromJson(dynamic json) {
    final data = List.from(json['data'] as List)
        .map((e) => FaqModel.fromJson(e))
        .toList();
    return FaqData(faqs: data);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = faqs.map((e) => e.toJson()).toList();
    return _data;
  }
}
