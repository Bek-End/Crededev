class TokenModel {
  TokenModel({
    required this.data,
  });
  late final Data data;

  TokenModel.fromJson(dynamic json) {
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      "data": data.toJson(),
    };
  }

  @override
  String toString() => 'TokenModel(data: $data)';
}

class Data {
  Data({
    required this.accessToken,
    required this.refreshToken,
  });
  late final String accessToken;
  late final RefreshToken refreshToken;

  Data.fromJson(dynamic json) {
    accessToken = json['access_token'] as String;
    refreshToken = RefreshToken.fromJson(json['refresh_token']);
  }

  Map<String, dynamic> toJson() {
    return {
      "access_token": accessToken,
      "refresh_token": refreshToken.toJson(),
    };
  }

  @override
  String toString() =>
      'Data(accessToken: $accessToken, refreshToken: $refreshToken)';
}

class RefreshToken {
  RefreshToken({
    required this.token,
    required this.expiresAt,
  });
  late final String token;
  late final String expiresAt;

  RefreshToken.fromJson(dynamic json) {
    token = json['token'] as String;
    expiresAt = json['expires_at'] as String;
  }

  Map<String, dynamic> toJson() {
    return {
      "token": token,
      "expires_at": expiresAt,
    };
  }
}
