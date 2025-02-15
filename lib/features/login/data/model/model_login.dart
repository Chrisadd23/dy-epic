//ignore_for_file: invalid_annotation_target
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
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

  factory ModelLogin.fromJson(Map<String, dynamic> json) =>
      _$ModelLoginFromJson(json);
}
