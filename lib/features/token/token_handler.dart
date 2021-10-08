abstract class TokenHandler {
  Future<void> saveToken({required final String token});
  Future<String> getToken();
}
