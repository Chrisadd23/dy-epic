import 'package:app_flutter_produkt_bestellen/features/chat/domain/entity/entity_contacts.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/use_case/get_customer_use_case.dart';
import 'package:bloc/bloc.dart';

import '../../domain/get_all_contacts_use_case.dart';

class ChatMessageCubit extends Cubit<List<EntityContact>> {
  ChatMessageCubit(this._getCustomerUseCase, this._getAllCustomersUseCase)
      : super([]);

  final GetCustomerUseCase _getCustomerUseCase;
  final GetAllContactsUseCase _getAllCustomersUseCase;

  Future<void> loadContacts() async {
    if (state.isNotEmpty) return;
    final customer = _getCustomerUseCase();
    //check user
    //action depends on type owner or customer
    if (customer?.getUserType == UserType.owner) {
      final response = await _getAllCustomersUseCase();
      response.fold((failure) => emit([]), (contacts) {
        print("contacts => $contacts");
        emit(contacts);
      });
    }
    //customer?.getUserType == UserType.owner ? emit([]) : emit([]);
  }
}
