import 'package:credo_p2p/core/errors/exceptions.dart';
import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/network/network_info.dart';
import 'package:credo_p2p/core/token_model/token_model.dart';
import 'package:credo_p2p/features/auth_remote/data/datasources/sign_in/auth_remote_refresh_token.dart';
import 'package:credo_p2p/features/auth_remote/data/datasources/sign_in/auth_remote_sign_in.dart';
import 'package:credo_p2p/features/auth_remote/data/datasources/sign_in/auth_remote_sign_in_request.dart';
import 'package:credo_p2p/features/auth_remote/data/datasources/sign_in/auth_remote_sign_out.dart';
import 'package:credo_p2p/features/auth_remote/data/datasources/sign_up/auth_remote_confirm_sign_up.dart';
import 'package:credo_p2p/features/auth_remote/data/datasources/sign_up/auth_remote_sign_up.dart';
import 'package:credo_p2p/features/auth_remote/data/models/phone_number_model.dart';
import 'package:credo_p2p/features/auth_remote/data/models/phone_number_with_code_model.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/auth_enum.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/phone_number.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/phone_number_with_code.dart';
import 'package:credo_p2p/features/auth_remote/domain/repositories/auth_remote_repo.dart';
import 'package:credo_p2p/features/token/token_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRemoteRepo)
class AuthRemoteRepoImpl extends AuthRemoteRepo {
  ///For checking internet connection
  final NetworkInfo networkInfo;

  ///For writing and reading token locally
  final TokenHandler tokenHandler;

  ///For refreshing token remotely
  final AuthRemoteRefreshToken refreshToken;

  final AuthRemoteSignIn signIn;
  final AuthRemoteSignInRequest signInRequest;
  final AuthRemoteSignOut signOut;

  final AuthRemoteSignUp signUp;
  final AuthRemoteConfirmSignUp confirmSignUp;

  AuthRemoteRepoImpl({
    required this.networkInfo,
    required this.tokenHandler,
    required this.refreshToken,
    required this.signIn,
    required this.signInRequest,
    required this.signOut,
    required this.signUp,
    required this.confirmSignUp,
  });

  @override
  Future<Either<Failure, Either<None, Auth>>> enterWithPhoneNumber({
    required PhoneNumber phoneNumber,
  }) async {
    final bool isConnected = await networkInfo.isConnected();
    if (isConnected) {
      logger.i("INTERNET CONNECTED");
      final number = PhoneNumberModel(number: phoneNumber.number);
      try {
        logger.i(number);
        await signInRequest.signInRequest(
          numberModel: number,
        );
        return right(right(Auth.signIn));
      } on ServerException catch (e) {
        return left(ServerFailure(error: e.error, stack: e.stack));
      } on UserNotFoundException {
        try {
          await signUp.signUp(numberModel: number);
          return right(right(Auth.signUp));
        } on ServerException catch (e) {
          return left(ServerFailure(error: e.error, stack: e.stack));
        }
      }
    }
    return left(const NoInternetFailure());
  }

  @override
  Future<Either<Failure, None>> enterWithPhoneNumberAndCode({
    required final PhoneNumberWithCode phoneNumberWithCode,
    required final Auth auth,
  }) async {
    final phoneCode = PhoneNumberWithCodeModel(
      number: phoneNumberWithCode.number,
      code: phoneNumberWithCode.code,
    );
    logger.d(phoneCode);
    late TokenModel tokenModel;
    try {
      switch (auth) {
        case Auth.signIn:
          tokenModel = await signIn.signIn(numberModel: phoneCode);
          break;
        case Auth.signUp:
          tokenModel = await confirmSignUp.confirmSignUp(
            numberModel: phoneCode,
          );
          break;
      }
      logger.i(tokenModel);
      await tokenHandler.saveToken(token: tokenModel);
      return right(const None());
    } on InvalidOneTimeCodeException {
      return left(const InvalidOneTimeCodeFailure());
    } on ServerException catch (e) {
      return left(ServerFailure(error: e.error, stack: e.stack));
    }
  }
}
