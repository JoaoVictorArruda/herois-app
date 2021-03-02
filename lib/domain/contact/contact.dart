import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/core/failures.dart';
import 'package:herois/domain/core/value_objects.dart';

part 'contact.freezed.dart';

@freezed
abstract class Contact implements _$Contact {
  const Contact._();

  const factory Contact({
    @required StringSingleLine userId,
    @required StringSingleLine lastMessage,
    String photoUrl,
    String name,
  }) = _Contact;

  factory Contact.empty() => Contact(
        userId: StringSingleLine(''),
        lastMessage: StringSingleLine(''),
        photoUrl: '',
        name: '',
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return userId.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
