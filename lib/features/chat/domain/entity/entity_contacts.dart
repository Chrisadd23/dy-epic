import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_contacts.freezed.dart';

@freezed
abstract class EntityContact with _$EntityContact {
  const factory EntityContact({
    required String customerNumber,
    required String email,
    String? companyName,
    String? customerName,
    String? customerSurname,
  }) = _EntityContact;
}
