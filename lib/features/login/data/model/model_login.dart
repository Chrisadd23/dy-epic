//ignore_for_file: invalid_annotation_target
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_login.freezed.dart';
part 'model_login.g.dart';

@freezed
class ModelLogin with _$ModelLogin {
  const ModelLogin._();

  @JsonSerializable(explicitToJson: true)
  const factory ModelLogin({
    required CustomerAddress address,
    required String customerNumber,
    required int userTypeIndex,
    String? email,
    String? companyName,
    @JsonKey(name: 'firstname') String? customerName,
    @JsonKey(name: 'lastname') String? customerSurname,
    int? registrationDate,
    CustomerAddress? deliveryAddress,
    @Default([]) List<UserNotification> notifications,
    String? fToken,
  }) = _ModelLogin;
}

@freezed
class CustomerAddress with _$CustomerAddress {
  @JsonSerializable(explicitToJson: true)
  const factory CustomerAddress({
    required String street,
    required String city,
    required String zipCode,
  }) = _CustomerAddress;

  factory CustomerAddress.fromJson(Map<String, dynamic> json) =>
      _$CustomerAddressFromJson(json);
}

@freezed
class UserNotification with _$UserNotification {
  const UserNotification._();

  @JsonSerializable(explicitToJson: true)
  const factory UserNotification({
    required int statusType,
    required bool active,
  }) = _UserNotification;

  EnumOrderProcess get orderProcessTyp => EnumOrderProcess.values
      .toList()
      .where((element) => element.index == statusType)
      .first;

  factory UserNotification.fromJson(Map<String, dynamic> json) =>
      _$UserNotificationFromJson(json);
}
