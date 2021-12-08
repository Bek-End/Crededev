import 'dart:convert';

import 'package:credo_p2p/features/profile/faq/data/datasources/local/faq_local_repo.dart';
import 'package:credo_p2p/features/profile/faq/data/models/faq_model.dart';
import 'package:credo_p2p/features/profile/faq/domain/entities/faq.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

const faqSecureData = "faqData";

@LazySingleton(as: FaqLocalRepo)
class FaqLocalRepoImpl implements FaqLocalRepo {
  final FlutterSecureStorage secureStorage;
  FaqLocalRepoImpl({
    required this.secureStorage,
  });
  @override
  Future<List<Faq>> getFaqs() async {
    final res = await secureStorage.read(key: faqSecureData);
    if (res != null) {
      final json = jsonDecode(res);
      return FaqData.fromJson(json).faqs;
    } else {
      return [];
    }
  }

  @override
  Future<bool> hasData() async {
    final res = await secureStorage.read(key: faqSecureData);
    return res != null;
  }

  @override
  Future<void> saveFaqs({required List<Faq> faqs}) async {
    final faqModels = faqs
        .map(
          (e) => FaqModel(
            id: e.id,
            question: e.question,
            answer: e.answer,
          ),
        )
        .toList();
    final faqData = FaqData(faqs: faqModels);
    await secureStorage.write(
      key: faqSecureData,
      value: jsonEncode(
        faqData.toJson(),
      ),
    );
  }
}
