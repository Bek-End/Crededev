// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:local_auth/local_auth.dart' as _i5;

import 'core/bloc/pin_bloc/pin_bloc.dart' as _i34;
import 'core/injectable_helpers/injectable_modules.dart' as _i49;
import 'core/network/network_info.dart' as _i7;
import 'core/network/network_info_impl.dart' as _i8;
import 'features/auth_local/data/local_authentication_service.dart' as _i6;
import 'features/auth_local/data/pincode_handler_impl.dart' as _i10;
import 'features/auth_local/domain/pincode_handler.dart' as _i9;
import 'features/auth_local/presentation/application/create_pincode_bloc/createpincode_bloc.dart'
    as _i26;
import 'features/auth_local/presentation/application/enter_pincode_bloc/enterpincode_bloc.dart'
    as _i27;
import 'features/auth_local/presentation/application/repeat_pincode_bloc/repeatpincode_bloc.dart'
    as _i11;
import 'features/auth_remote/data/datasources/sign_in/auth_remote_refresh_token.dart'
    as _i16;
import 'features/auth_remote/data/datasources/sign_in/auth_remote_sign_in.dart'
    as _i18;
import 'features/auth_remote/data/datasources/sign_in/auth_remote_sign_in_request.dart'
    as _i20;
import 'features/auth_remote/data/datasources/sign_in/auth_remote_sign_out.dart'
    as _i22;
import 'features/auth_remote/data/datasources/sign_in/implemenations/auth_remote_refresh_token.dart'
    as _i17;
import 'features/auth_remote/data/datasources/sign_in/implemenations/auth_remote_sign_in.dart'
    as _i19;
import 'features/auth_remote/data/datasources/sign_in/implemenations/auth_remote_sign_in_request_impl.dart'
    as _i21;
import 'features/auth_remote/data/datasources/sign_in/implemenations/auth_remote_sign_out_impl.dart'
    as _i23;
import 'features/auth_remote/data/datasources/sign_up/auth_remote_confirm_sign_up.dart'
    as _i14;
import 'features/auth_remote/data/datasources/sign_up/auth_remote_sign_up.dart'
    as _i24;
import 'features/auth_remote/data/datasources/sign_up/implementations/auth_remote_confirm_sign_up_impl.dart'
    as _i15;
import 'features/auth_remote/data/datasources/sign_up/implementations/auth_remote_sign_up_impl.dart'
    as _i25;
import 'features/auth_remote/data/repositories/auth_remote_repo_impl.dart'
    as _i38;
import 'features/auth_remote/domain/repositories/auth_remote_repo.dart' as _i37;
import 'features/auth_remote/domain/usecases/enter_with_phone_number.dart'
    as _i39;
import 'features/auth_remote/domain/usecases/enter_with_phone_number_and_code.dart'
    as _i40;
import 'features/auth_remote/presentation/application/entercode_bloc.dart/entercode_bloc.dart'
    as _i41;
import 'features/auth_remote/presentation/application/entrphonenumber_bloc/enterphonenumber_bloc.dart'
    as _i42;
import 'features/home/core/data/datasources/remote_data_source_impl.dart'
    as _i36;
import 'features/home/core/data/datasources/remote_data_source_repo.dart'
    as _i35;
import 'features/home/core/data/repository/loan_repo_impl.dart' as _i46;
import 'features/home/core/domain/entities/loan_main_info.dart' as _i45;
import 'features/home/core/domain/repository/loan_repo.dart' as _i44;
import 'features/home/give_loan/give_loan_main_page/application/giveloanmainpage_bloc.dart'
    as _i48;
import 'features/home/receive_loan/receive_loan_main_page/application/receiveloanmainpage_bloc.dart'
    as _i47;
import 'features/profile/faq/application/faq_bloc.dart' as _i43;
import 'features/profile/faq/data/datasources/local/faq_local_repo.dart'
    as _i28;
import 'features/profile/faq/data/datasources/local/faq_local_repo_impl.dart'
    as _i29;
import 'features/profile/faq/data/datasources/remote/faq_remote_repo.dart'
    as _i30;
import 'features/profile/faq/data/datasources/remote/faq_remote_repo_impl.dart'
    as _i31;
import 'features/profile/faq/data/repository/faq_repo_impl.dart' as _i33;
import 'features/profile/faq/domain/repository/faq_repo.dart' as _i32;
import 'features/token/token_handler.dart' as _i12;
import 'features/token/token_handler_impl.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.Dio>(() => injectableModule.dio);
  gh.lazySingleton<_i4.FlutterSecureStorage>(
      () => injectableModule.secureStorage);
  gh.lazySingleton<_i5.LocalAuthentication>(() => injectableModule.localAuth);
  gh.lazySingleton<_i6.LocalAuthenticationService>(() =>
      _i6.LocalAuthenticationService(auth: get<_i5.LocalAuthentication>()));
  gh.lazySingleton<_i7.NetworkInfo>(() => _i8.NetworkInfoImpl());
  gh.lazySingleton<_i9.PincodeHandler>(() =>
      _i10.PincodeHandlerImpl(secureStorage: get<_i4.FlutterSecureStorage>()));
  gh.factory<_i11.RepeatpincodeBloc>(
      () => _i11.RepeatpincodeBloc(get<_i9.PincodeHandler>()));
  gh.lazySingleton<_i12.TokenHandler>(() => _i13.TokenHandlerImpl(
      secureStorage: get<_i4.FlutterSecureStorage>(), dio: get<_i3.Dio>()));
  gh.lazySingleton<_i14.AuthRemoteConfirmSignUp>(
      () => _i15.AuthRemoteSignUpImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i16.AuthRemoteRefreshToken>(
      () => _i17.AuthRemoteRefreshTokenImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i18.AuthRemoteSignIn>(
      () => _i19.AuthRemoteSignInImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i20.AuthRemoteSignInRequest>(
      () => _i21.AuthRemoteSignInRequestImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i22.AuthRemoteSignOut>(
      () => _i23.AuthRemoteSignOutImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i24.AuthRemoteSignUp>(
      () => _i25.AuthRemoteSignUpImpl(dio: get<_i3.Dio>()));
  gh.factory<_i26.CreatepincodeBloc>(
      () => _i26.CreatepincodeBloc(get<_i9.PincodeHandler>()));
  gh.factory<_i27.EnterpincodeBloc>(
      () => _i27.EnterpincodeBloc(get<_i9.PincodeHandler>()));
  gh.lazySingleton<_i28.FaqLocalRepo>(() =>
      _i29.FaqLocalRepoImpl(secureStorage: get<_i4.FlutterSecureStorage>()));
  gh.lazySingleton<_i30.FaqRemoteRepo>(() => _i31.FaqRemoteRepoImpl(
      dio: get<_i3.Dio>(), tokenHandler: get<_i12.TokenHandler>()));
  gh.lazySingleton<_i32.FaqRepo>(() => _i33.FaqRepoImpl(
      localRepo: get<_i28.FaqLocalRepo>(),
      remoteRepo: get<_i30.FaqRemoteRepo>(),
      networkInfo: get<_i7.NetworkInfo>()));
  gh.factory<_i34.PinBloc>(
      () => _i34.PinBloc(get<_i9.PincodeHandler>(), get<_i12.TokenHandler>()));
  gh.lazySingleton<_i35.RemoteDataSourceRepo>(() =>
      _i36.RemoteDataSourceRepoImpl(
          dio: get<_i3.Dio>(), tokenHandler: get<_i12.TokenHandler>()));
  gh.lazySingleton<_i37.AuthRemoteRepo>(() => _i38.AuthRemoteRepoImpl(
      networkInfo: get<_i7.NetworkInfo>(),
      tokenHandler: get<_i12.TokenHandler>(),
      refreshToken: get<_i16.AuthRemoteRefreshToken>(),
      signIn: get<_i18.AuthRemoteSignIn>(),
      signInRequest: get<_i20.AuthRemoteSignInRequest>(),
      signOut: get<_i22.AuthRemoteSignOut>(),
      signUp: get<_i24.AuthRemoteSignUp>(),
      confirmSignUp: get<_i14.AuthRemoteConfirmSignUp>()));
  gh.lazySingleton<_i39.EnterWithPhoneNumber>(
      () => _i39.EnterWithPhoneNumber(repo: get<_i37.AuthRemoteRepo>()));
  gh.lazySingleton<_i40.EnterWithPhoneNumberAndCode>(
      () => _i40.EnterWithPhoneNumberAndCode(repo: get<_i37.AuthRemoteRepo>()));
  gh.factory<_i41.EntercodeBloc>(() => _i41.EntercodeBloc(
      get<_i40.EnterWithPhoneNumberAndCode>(),
      get<_i39.EnterWithPhoneNumber>(),
      get<_i9.PincodeHandler>()));
  gh.factory<_i42.EnterphonenumberBloc>(() => _i42.EnterphonenumberBloc(
      enterWithPhoneNumber: get<_i39.EnterWithPhoneNumber>()));
  gh.factory<_i43.FaqBloc>(() => _i43.FaqBloc(get<_i32.FaqRepo>()));
  gh.lazySingleton<_i44.LoanRepo<_i45.LoanMainInfo>>(() => _i46.LoanRepoImpl(
      dataSourceRepo: get<_i35.RemoteDataSourceRepo>(),
      networkInfo: get<_i7.NetworkInfo>()));
  gh.factory<_i47.ReceiveloanmainpageBloc>(() =>
      _i47.ReceiveloanmainpageBloc(get<_i44.LoanRepo<_i45.LoanMainInfo>>()));
  gh.factory<_i48.GiveloanmainpageBloc>(
      () => _i48.GiveloanmainpageBloc(get<_i44.LoanRepo<_i45.LoanMainInfo>>()));
  return get;
}

class _$InjectableModule extends _i49.InjectableModule {}
