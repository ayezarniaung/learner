import 'package:dartz/dartz.dart';
import 'package:learner/core/error/failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, dynamic>> login();
}
