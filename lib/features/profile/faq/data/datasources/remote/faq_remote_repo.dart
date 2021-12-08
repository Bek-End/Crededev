import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/features/profile/faq/domain/entities/faq.dart';

abstract class FaqRemoteRepo {
  ///Makes GET request to https://api.credo.dev.galament.net/faq and returns a list of [Faq] objects
  ///
  ///Throws [ServerException] on any excpetions
  Future<List<Faq>> getFaqs();
}
