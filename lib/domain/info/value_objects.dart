import 'package:dartz/dartz.dart';
import 'package:herois/domain/core/failures.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/core/value_validators.dart';

class BloodType extends ValueObject<String, String> {
  static const List<String> predefinedBloodTypes = [
    "A+",
    "A-",
    "B+",
    "B-",
    "AB+",
    "AB-",
    "O+",
    "O-",
  ];

  @override
  final Either<ValueFailure<String>, String> value;

  factory BloodType(String input) {
    assert(input != null && input is String);
    return BloodType._(
      validateBloodType(input),
    );
  }

  const BloodType._(this.value);
}

class Gender extends ValueObject<String, String> {
  static const List<String> predefinedGender = [
    "Male",
    "Female",
  ];

  @override
  final Either<ValueFailure<String>, String> value;

  factory Gender(String input) {
    assert(input != null && input is String);
    return Gender._(
      validateGender(input),
    );
  }

  const Gender._(this.value);
}

class InfoBio extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 128;

  factory InfoBio(String input) {
    assert(input != null);
    return InfoBio._(
      validateMaxStringLength(input, maxLength),
    );
  }

  const InfoBio._(this.value);
}

class LocalizationString extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 90;

  factory LocalizationString(String input) {
    assert(input != null);
    return LocalizationString._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const LocalizationString._(this.value);
}
