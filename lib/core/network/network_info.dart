const String entryPoint = "https://api.credo.dev.galament.net";

abstract class NetworkInfo {
  Future<bool> isConnected();
}
