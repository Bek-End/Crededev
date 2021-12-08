import 'package:credo_p2p/features/profile/faq/domain/entities/faq.dart';

abstract class FaqLocalRepo {
  ///Returns true, if there is any [Faq] data saved locally
  ///
  ///Returns false, if there is no [Faq] data saved locally
  Future<bool> hasData();

  ///Retruns a list of [Faq] objects if not empty
  ///
  ///Returns empty list of [Faq] type if there are no saved data
  Future<List<Faq>> getFaqs();

  ///Saves a list of [Faq] objects locally
  Future<void> saveFaqs({required final List<Faq> faqs});
}
