import 'package:app_flutter_produkt_bestellen/features/chat/domain/entity/entity_contacts.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/entity/entity_login_customer.dart';
import 'package:app_flutter_produkt_bestellen/features/login/domain/use_case/get_customer_use_case.dart';
import 'package:bloc/bloc.dart';

class ChatMessageCubit extends Cubit<List<EntityContact>> {
  ChatMessageCubit(this._getCustomerUseCase) : super([]);

  final GetCustomerUseCase _getCustomerUseCase;

  loadContacts() {
    final customer = _getCustomerUseCase();
    //check user
    //action depends on type owner or customer
    customer?.getUserType == UserType.owner ? emit([]) : emit([]);
  }
}
