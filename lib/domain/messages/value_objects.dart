import 'package:dartz/dartz.dart';
import 'package:herois/domain/core/failures.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/core/value_validators.dart';

class MessageText extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory MessageText(String input) {
    assert(input != null);
    return MessageText._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const MessageText._(this.value);
}
