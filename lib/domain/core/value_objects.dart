import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';
import 'package:herois/domain/core/errors.dart';
import 'package:herois/domain/core/failures.dart';
import 'package:herois/domain/core/value_validators.dart';

@immutable
abstract class ValueObject<T, J> {
  const ValueObject();

  Either<ValueFailure<T>, J> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  J getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  J getOrElse(J dflt) {
    return value.getOrElse(() => dflt);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
          (l) => left(l),
          (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T, J> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class UniqueId extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  // We cannot let a simple String be passed in. This would allow for possible non-unique IDs.
  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }

  /// Used with strings we trust are unique, such as database IDs.
  factory UniqueId.fromUniqueString(String uniqueIdStr) {
    assert(uniqueIdStr != null);
    return UniqueId._(
      right(uniqueIdStr),
    );
  }

  const UniqueId._(this.value);
}

class StringSingleLine extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLine(String input) {
    return StringSingleLine._(
      validateSingleLine(input).flatMap(validateStringNotEmpty),
    );
  }

  const StringSingleLine._(this.value);
}

class LatLong extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LatLong(String input) {
    return LatLong._(
      validateSingleLine(input).flatMap(validateStringNotEmpty),
    );
  }

  const LatLong._(this.value);
}

class CustomDate extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CustomDate(String input) {
    return CustomDate._(
      validateSingleLine(input).flatMap(validateStringNotEmpty),
    );
  }

  const CustomDate._(this.value);
}