import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  // If the subclasses have some properties, they'll get passed to this constructor
  // so that Equatable can perform value comparison.
  const Failure();
}

class NoInternetFailure extends Failure {
  const NoInternetFailure();
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  final String error;
  final String stack;

  const ServerFailure({required final this.error, required final this.stack});
  @override
  List<Object?> get props => [];

  @override
  String toString() => 'ServerFailure(error: $error, stack: $stack)';
}

class NoCardAddedFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class CacheFailure extends Failure {
  const CacheFailure();
  @override
  List<Object?> get props => [];
}

class InvalidOneTimeCodeFailure extends Failure {
  const InvalidOneTimeCodeFailure();

  @override
  List<Object?> get props => [];
}
