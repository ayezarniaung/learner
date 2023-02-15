import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:learner/core/error/failures.dart';

class DialogUtil {
  Either<Failure, dynamic> expiredDialog(BuildContext context) {
    try {
      var expired = showDialog(
          context: context,
          builder: (_) {
            return const AlertDialog();
          });

      return Right(expired);
    } on FormatException {
      return const Left(InvalidInputFailure());
    }
  }
}

class InvalidInputFailure extends Failure {
  const InvalidInputFailure({super.message});
}
