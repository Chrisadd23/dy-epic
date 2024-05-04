import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/use_case/update_customer_use_case.dart';
import 'package:app_flutter_produkt_bestellen/features/settings/presentation/cubit/settings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(this._updateCustomerUseCase)
      : super(const SettingsState(isSaving: false));

  final UpdateCustomerUseCase _updateCustomerUseCase;

  Future<EntityLoginCustomer?> saveDeliveryAddress({
    required EntityLoginCustomer customerEntity,
    required String street,
    required String zipCode,
    required String city,
  }) async {
    emit(state.copyWith(isSaving: true));
    final updateCustomer = await _updateCustomerUseCase(
        customerEntity: customerEntity,
        street: street,
        zipCode: zipCode,
        city: city);
    return updateCustomer.fold((left) => null, (customer) {
      return customer;
    });
  }
}
