import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_login_customer.freezed.dart';

@freezed
class EntityLoginCustomer with _$EntityLoginCustomer {
  const factory EntityLoginCustomer({
    required String id,
    required CustomerAddress address,
    required String customerNumber,
    String? email,
    String? companyName,
    String? customerName,
    String? customerSurname,
    DateTime? registrationDate,
    CustomerAddress? deliveryAddress,
  }) = _EntityLoginCustomer;
}

@freezed
class CustomerAddress with _$CustomerAddress {
  const factory CustomerAddress({
    required String street,
    required String city,
    required String zipCode,
  }) = _CustomerAddress;
}
