// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/injectable_helpers/injectable_modules.dart' as _i27;
import 'core/network/network_info.dart' as _i5;
import 'core/network/network_info_impl.dart' as _i6;
import 'features/auth_remote/data/datasources/sign_in/auth_remote_refresh_token.dart'
    as _i11;
import 'features/auth_remote/data/datasources/sign_in/auth_remote_sign_in.dart'
    as _i13;
import 'features/auth_remote/data/datasources/sign_in/auth_remote_sign_in_request.dart'
    as _i15;
import 'features/auth_remote/data/datasources/sign_in/auth_remote_sign_out.dart'
    as _i17;
import 'features/auth_remote/data/datasources/sign_in/implemenations/auth_remote_refresh_token.dart'
    as _i12;
import 'features/auth_remote/data/datasources/sign_in/implemenations/auth_remote_sign_in.dart'
    as _i14;
import 'features/auth_remote/data/datasources/sign_in/implemenations/auth_remote_sign_in_request_impl.dart'
    as _i16;
import 'features/auth_remote/data/datasources/sign_in/implemenations/auth_remote_sign_out_impl.dart'
    as _i18;
import 'features/auth_remote/data/datasources/sign_up/auth_remote_confirm_sign_up.dart'
    as _i9;
import 'features/auth_remote/data/datasources/sign_up/auth_remote_sign_up.dart'
    as _i19;
import 'features/auth_remote/data/datasources/sign_up/implementations/auth_remote_confirm_sign_up_impl.dart'
    as _i10;
import 'features/auth_remote/data/datasources/sign_up/implementations/auth_remote_sign_up_impl.dart'
    as _i20;
import 'features/auth_remote/data/repositories/auth_remote_repo_impl.dart'
    as _i22;
import 'features/auth_remote/domain/repositories/auth_remote_repo.dart' as _i21;
import 'features/auth_remote/domain/usecases/enter_with_phone_number.dart'
    as _i23;
import 'features/auth_remote/domain/usecases/enter_with_phone_number_and_code.dart'
    as _i24;
import 'features/auth_remote/presentation/application/entercode_bloc.dart/entercode_bloc.dart'
    as _i25;
import 'features/auth_remote/presentation/application/entrphonenumber_bloc/enterphonenumber_bloc.dart'
    as _i26;
import 'features/token/token_handler.dart' as _i7;
import 'features/token/token_handler_impl.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.Dio>(() => injectableModule.dio);
  gh.lazySingleton<_i4.FlutterSecureStorage>(
      () => injectableModule.secureStorage);
  gh.lazySingleton<_i5.NetworkInfo>(() => _i6.NetworkInfoImpl());
  gh.lazySingleton<_i7.TokenHandler>(() =>
      _i8.TokenHandlerImpl(secureStorage: get<_i4.FlutterSecureStorage>()));
  gh.lazySingleton<_i9.AuthRemoteConfirmSignUp>(
      () => _i10.AuthRemoteSignUpImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i11.AuthRemoteRefreshToken>(
      () => _i12.AuthRemoteRefreshTokenImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i13.AuthRemoteSignIn>(
      () => _i14.AuthRemoteSignInImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i15.AuthRemoteSignInRequest>(
      () => _i16.AuthRemoteSignInRequestImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i17.AuthRemoteSignOut>(
      () => _i18.AuthRemoteSignOutImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i19.AuthRemoteSignUp>(
      () => _i20.AuthRemoteSignUpImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i21.AuthRemoteRepo>(() => _i22.AuthRemoteRepoImpl(
      networkInfo: get<_i5.NetworkInfo>(),
      tokenHandler: get<_i7.TokenHandler>(),
      refreshToken: get<_i11.AuthRemoteRefreshToken>(),
      signIn: get<_i13.AuthRemoteSignIn>(),
      signInRequest: get<_i15.AuthRemoteSignInRequest>(),
      signOut: get<_i17.AuthRemoteSignOut>(),
      signUp: get<_i19.AuthRemoteSignUp>(),
      confirmSignUp: get<_i9.AuthRemoteConfirmSignUp>()));
  gh.lazySingleton<_i23.EnterWithPhoneNumber>(
      () => _i23.EnterWithPhoneNumber(repo: get<_i21.AuthRemoteRepo>()));
  gh.lazySingleton<_i24.EnterWithPhoneNumberAndCode>(
      () => _i24.EnterWithPhoneNumberAndCode(repo: get<_i21.AuthRemoteRepo>()));
  gh.factory<_i25.EntercodeBloc>(() => _i25.EntercodeBloc(
      get<_i24.EnterWithPhoneNumberAndCode>(),
      get<_i23.EnterWithPhoneNumber>()));
  gh.factory<_i26.EnterphonenumberBloc>(() => _i26.EnterphonenumberBloc(
      enterWithPhoneNumber: get<_i23.EnterWithPhoneNumber>()));
  return get;
}

class _$InjectableModule extends _i27.InjectableModule {}
