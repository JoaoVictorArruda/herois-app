import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:herois/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, int> validateGreaterThanZero(int input) {
  if (input > 0) {
    return left(ValueFailure.exceedingLength(failedValue: input.toString(), max: 1));
  } else {
    return right(input);
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
  KtList<T> input,
  int maxLength,
) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateBloodType(String input) {
  if (input is String) {
    return right(input);
  } else {
    return left(ValueFailure.invalidBloodType(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateGender(String input) {
  if (input is String) {
    return right(input);
  } else {
    return left(ValueFailure.invalidGender(failedValue: input));
  }
}