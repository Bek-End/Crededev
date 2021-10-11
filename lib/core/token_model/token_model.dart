class TokenModel {
  TokenModel({
    required this.data,
  });
  late final Data data;

  TokenModel.fromJson(dynamic json) {
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.toJson();
    return _data;
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
    final _data = <String, dynamic>{};
    _data['access_token'] = accessToken;
    _data['refresh_token'] = refreshToken.toJson();
    return _data;
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
    final _data = <String, dynamic>{};
    _data['token'] = token;
    _data['expires_at'] = expiresAt;
    return _data;
  }
}
